{-# OPTIONS_GHC -fno-warn-name-shadowing #-}

module Game.Ghosts.Algo.AStar.Run.Default.Blinky where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.Algo.AStar.Tiles.AllTileDataAStar
import Game.Ghosts.Algo.AStar.Definition
import Game.Ghosts.Algo.AStar.Distance
import Game.Ghosts.Algo.AStar.Default.Blinky
import Graphics.Map.Static.Tiles.Definition
import Graphics.Map.Static.Tiles.Default
import Graphics.Map.Static.Tiles.AllTileData

import Data.List as DL (unfoldr)
import Data.Map.Strict as DMS
import Data.PQueue.Min as DPQM
import Data.Sequence as Seq (filter,fromList,Seq(..),viewl,ViewL(..))


runAStarBlinkyDefault :: BlinkyState
runAStarBlinkyDefault = do
  let blinkyct  = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 256) alltiledataastarinit) of
                    Seq.EmptyL   -> defaulttileastar
                    (x Seq.:< _) -> x
  let pqstart   = DPQM.singleton blinkyct
  let a0        = AStarData { camefrom = DMS.empty
                            , gscore   = DMS.singleton blinkyct 0
                            , openset  = pqstart
                            }
  astarloop a0
    where
      astarloop a = do let pacmanct      = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 299) alltiledatainit) of
                                             Seq.EmptyL   -> defaulttile
                                             (x Seq.:< _) -> x
                       let pacmanctastar = TileDataAStar { tilenumberastar     = tilenumber pacmanct
                                                         , tilecoordinateastar = tilecoordinate pacmanct
                                                         , tileoccupiedastar   = tileoccupied pacmanct
                                                         , cookiedataastar     = cookiedata pacmanct
                                                         , walldataastar       = walldata pacmanct
                                                         , adjacenttoastar     = adjacentto pacmanct
                                                         , fscoreastar         = 0
                                                         }
                       case (DPQM.minView (openset a)) of
                         Nothing           -> blinkyastardefault
                         Just (minqe,allq) -> if | tilenumberastar minqe == tilenumberastar pacmanctastar
                                                 -> do let newblinkytargettileseq      = getPath $
                                                                                         camefrom a
                                                       let newblinkytargettileseqf     = Seq.fromList newblinkytargettileseq
                                                       BlinkyState { blinkycurrentmode      = Chase
                                                                   , blinkycurrentdrawstate = GhostRegularDraw
                                                                   , blinkycurrentposition  = (557,858)
                                                                   , blinkycurrenttile      = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 256) alltiledataastarinit) of
                                                                                                Seq.EmptyL   -> defaulttileastar 
                                                                                                (x Seq.:< _) -> x 
                                                                   , blinkytargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 299) alltiledataastarinit) of
                                                                                                Seq.EmptyL   -> defaulttileastar
                                                                                                (x Seq.:< _) -> x
                                                                   , blinkytargettileseq    = newblinkytargettileseqf
                                                                   , blinkycurrentdirection = Game.Types.Right
                                                                   , blinkycurrentspeed     = 75
                                                                   , blinkydotcounter       = 0
                                                                   }
                                                 | otherwise
                                                 -> do let neighbors = Seq.filter (\x -> elem (tilenumberastar minqe) (adjacenttoastar x))
                                                                       alltiledataastarinit 
                                                       let anew      = a { openset = allq }
                                                       let a'        = go anew
                                                                          neighbors
                                                       astarloop a'
        where
          go a Seq.Empty                             = a 
          go a (currentneighbor :<| restofneighbors) = do let blinkyct         = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 256) alltiledataastarinit) of
                                                                                   Seq.EmptyL   -> defaulttileastar
                                                                                   (x Seq.:< _) -> x
                                                          let pacmanct         = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 299) alltiledatainit) of
                                                                                   Seq.EmptyL   -> defaulttile
                                                                                   (x Seq.:< _) -> x 
                                                          let pacmanctastar    = TileDataAStar { tilenumberastar     = tilenumber pacmanct
                                                                                               , tilecoordinateastar = tilecoordinate pacmanct
                                                                                               , tileoccupiedastar   = tileoccupied pacmanct
                                                                                               , cookiedataastar     = cookiedata pacmanct
                                                                                               , walldataastar       = walldata pacmanct
                                                                                               , adjacenttoastar     = adjacentto pacmanct
                                                                                               , fscoreastar         = 0
                                                                                               }
                                                          let hn               = manhattanDistance currentneighbor
                                                                                                   pacmanctastar
                                                          let disttog          = manhattanDistance currentneighbor
                                                                                                   blinkyct
                                                          let trialscore       = (DMS.findWithDefault maxBound
                                                                                                      pqs
                                                                                                      (gscore a)
                                                                                 ) + disttog
                                                          let currentneighborf = TileDataAStar { tilenumberastar     = tilenumberastar currentneighbor
                                                                                               , tilecoordinateastar = tilecoordinateastar currentneighbor
                                                                                               , tileoccupiedastar   = tileoccupiedastar currentneighbor
                                                                                               , cookiedataastar     = cookiedataastar currentneighbor
                                                                                               , walldataastar       = walldataastar currentneighbor
                                                                                               , adjacenttoastar     = adjacenttoastar currentneighbor
                                                                                               , fscoreastar         = trialscore + hn
                                                                                               }
                                                          if | trialscore >= disttog
                                                             -> go a
                                                                   restofneighbors
                                                             | otherwise
                                                             -> do let newastardata = AStarData { camefrom = case (DMS.lookupMax (camefrom a)) of
                                                                                                               Nothing       -> (camefrom a) 
                                                                                                               Just (_,nmax) -> DMS.insert nmax
                                                                                                                                           currentneighborf
                                                                                                                                           (camefrom a)
                                                                                                , gscore   = DMS.insert currentneighborf
                                                                                                                        trialscore
                                                                                                                        (gscore a)
                                                                                                , openset  = DPQM.insert currentneighborf
                                                                                                                         (openset a)
                                                                                                }
                                                                   go newastardata
                                                                      restofneighbors 
          pqs = case (DPQM.getMin (openset a)) of
                  Nothing    -> defaulttileastar
                  Just minqe -> minqe
          getPath m = do let pacmanct      = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 299) alltiledatainit) of
                                               Seq.EmptyL   -> defaulttile
                                               (x Seq.:< _) -> x
                         let pacmanctastar = TileDataAStar { tilenumberastar     = tilenumber pacmanct
                                                           , tilecoordinateastar = tilecoordinate pacmanct
                                                           , tileoccupiedastar   = tileoccupied pacmanct
                                                           , cookiedataastar     = cookiedata pacmanct
                                                           , walldataastar       = walldata pacmanct
                                                           , adjacenttoastar     = adjacentto pacmanct
                                                           , fscoreastar         = 0
                                                           }
                         reverse $ pacmanctastar : unfoldr go pacmanctastar
            where
              go n = (\x -> (x,x)) <$> DMS.lookup n
                                                  m

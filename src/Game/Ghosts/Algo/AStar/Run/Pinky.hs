{-# OPTIONS_GHC -fno-warn-name-shadowing #-}

module Game.Ghosts.Algo.AStar.Run.Pinky where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.Algo.AStar.Tiles.AllTileDataAStar

import Game.Ghosts.Algo.AStar.Definition
import Game.Ghosts.Algo.AStar.Distance
import Game.Ghosts.Algo.AStar.Default.Pinky
import Graphics.Map.Static.Tiles.Definition

import Data.List as DL (unfoldr)
import Data.Map.Strict as DMS
import Data.PQueue.Min as DPQM
import Data.Sequence as Seq (filter,fromList,Seq(..))


runAStarPinky :: GameData
              -> PinkyState
runAStarPinky gd = do
  let pinkycurrentstate = pinkystate gd
  let pinkyct           = case (pinkycurrenttile pinkycurrentstate) of
                            Nothing -> defaulttileastar
                            Just ct -> ct
  let pqstart           = DPQM.singleton pinkyct
  let a0                = AStarData { camefrom = DMS.empty
                                    , gscore   = DMS.singleton pinkyct 0
                                    , openset  = pqstart
                                    }
  astarloop a0
    where
      astarloop a = do let pinkycurrentstate  = pinkystate gd
                       let pacmancurrentstate = pacmanstate gd 
                       let pacmanct           = pacmancurrenttile pacmancurrentstate
                       let pacmanctastar      = TileDataAStar { tilenumberastar     = tilenumber pacmanct
                                                              , tilecoordinateastar = tilecoordinate pacmanct
                                                              , tileoccupiedastar   = tileoccupied pacmanct
                                                              , cookiedataastar     = cookiedata pacmanct
                                                              , walldataastar       = walldata pacmanct
                                                              , adjacenttoastar     = adjacentto pacmanct
                                                              , fscoreastar         = 0
                                                              }
                       case (DPQM.minView (openset a)) of
                         Nothing           -> pinkyastardefault
                         Just (minqe,allq) -> if | tilenumberastar minqe == tilenumberastar pacmanctastar
                                                 -> do let newpinkytargettile     = pacmanctastar
                                                       let newpinkytargettileseq  = getPath $
                                                                                    camefrom a
                                                       let newpinkytargettileseqf = Seq.fromList newpinkytargettileseq
                                                       PinkyState { pinkycurrentmode      = pinkycurrentmode pinkycurrentstate
                                                                  , pinkycurrentdrawstate = pinkycurrentdrawstate pinkycurrentstate
                                                                  , pinkycurrentposition  = pinkycurrentposition pinkycurrentstate
                                                                  , pinkycurrenttile      = pinkycurrenttile pinkycurrentstate
                                                                  , pinkytargettile       = newpinkytargettile
                                                                  , pinkytargettileseq    = newpinkytargettileseqf
                                                                  , pinkycurrentdirection = pinkycurrentdirection pinkycurrentstate
                                                                  , pinkycurrentspeed     = pinkycurrentspeed pinkycurrentstate
                                                                  , pinkydotcounter       = pinkydotcounter pinkycurrentstate
                                                                  , pinkyghsl             = pinkyghsl pinkycurrentstate
                                                                  }
                                                 | otherwise
                                                 -> do let neighbors = Seq.filter (\x -> elem (tilenumberastar minqe) (adjacenttoastar x))
                                                                       alltiledataastarinit 
                                                       let anew      = a { openset = allq }
                                                       let a'        =  go anew
                                                                           neighbors
                                                       astarloop a'
        where
          go a Seq.Empty                             = a
          go a (currentneighbor :<| restofneighbors) = do let pinkycurrentstate  = pinkystate gd
                                                          let pacmancurrentstate = pacmanstate gd
                                                          let pinkyct            = case (pinkycurrenttile pinkycurrentstate) of
                                                                                     Nothing -> defaulttileastar
                                                                                     Just ct -> ct
                                                          let pacmanct           = pacmancurrenttile pacmancurrentstate
                                                          let pacmanctastar      = TileDataAStar { tilenumberastar     = tilenumber pacmanct
                                                                                                 , tilecoordinateastar = tilecoordinate pacmanct
                                                                                                 , tileoccupiedastar   = tileoccupied pacmanct
                                                                                                 , cookiedataastar     = cookiedata pacmanct
                                                                                                 , walldataastar       = walldata pacmanct
                                                                                                 , adjacenttoastar     = adjacentto pacmanct
                                                                                                 , fscoreastar         = 0
                                                                                                 }
                                                          let hn                 = manhattanDistance currentneighbor
                                                                                                     pacmanctastar
                                                          let disttog            = manhattanDistance currentneighbor
                                                                                                     pinkyct
                                                          let trialscore         = (DMS.findWithDefault maxBound
                                                                                                        pqs
                                                                                                        (gscore a)
                                                                                   ) + disttog
                                                          let currentneighborf   = TileDataAStar { tilenumberastar     = tilenumberastar currentneighbor
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
          getPath m = do let pacmancurrentstate = pacmanstate gd
                         let pacmanct           = pacmancurrenttile pacmancurrentstate
                         let pacmanctastar      = TileDataAStar { tilenumberastar     = tilenumber pacmanct
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

{-# OPTIONS_GHC -fno-warn-name-shadowing #-}

module Game.Ghosts.Algo.AStar.Run.Blinky where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.Algo.AStar.Tiles.AllTileDataAStar
import Game.Ghosts.Algo.AStar.Common
import Game.Ghosts.Algo.AStar.Definition
import Game.Ghosts.Algo.AStar.Distance
import Game.Ghosts.Algo.AStar.Default.Blinky
import Graphics.Map.Static.Tiles.Definition

import Control.Concurrent.STM as CCSTM
import Data.Foldable as DFold (toList)
import Data.List as DL (elem,map,unfoldr)
import Data.Map.Strict as DMS
import Data.PQueue.Min as DPQM
import Data.Sequence as Seq (filter,fromList,Seq(..))


runAStarBlinky :: GameData
               -> IO BlinkyState
runAStarBlinky gd = do
  blinkycurrentstate <- CCSTM.readTVarIO $ 
                        blinkystate gd
  let blinkyct  = blinkycurrenttile blinkycurrentstate
  let pqstart   = DPQM.singleton blinkyct
  a0 <- return $ AStarData { camefrom = DMS.empty
                           , gscore   = DMS.singleton blinkyct 0
                           , openset  = pqstart
                           }
  astarblinky <- astarloop a0
  return astarblinky
    where
      astarloop a = do blinkycurrentstate <- CCSTM.readTVarIO $ 
                                              blinkystate gd
                       pacmancurrentstate <- CCSTM.readTVarIO $
                                             pacmanstate gd 
                       let pacmanct      = pacmancurrenttile pacmancurrentstate
                       let pacmanctastar = TileDataAStar { tilenumberastar     = tilenumber pacmanct
                                                         , tilecoordinateastar = tilecoordinate pacmanct
                                                         , tileoccupiedastar   = tileoccupied pacmanct
                                                         , cookiedataastar     = cookiedata pacmanct
                                                         , walldataastar       = walldata pacmanct
                                                         , adjacenttoastar     = adjacentto pacmanct
                                                         , fscoreastar         = 0
                                                         }
                       case (DPQM.minView (openset a)) of
                         Nothing           -> return blinkyastardefault
                         Just (minqe,allq) -> if | tilenumberastar minqe == tilenumberastar pacmanctastar
                                                 -> do let newblinkytargettile     = pacmanctastar
                                                       newblinkytargettileseq      <- getPath $
                                                                                      camefrom a
                                                       let newblinkytargettileseqf = Seq.fromList newblinkytargettileseq
                                                       let newblinkystate          = BlinkyState { blinkycurrentmode      = blinkycurrentmode blinkycurrentstate
                                                                                                 , blinkycurrentdrawstate = blinkycurrentdrawstate blinkycurrentstate
                                                                                                 , blinkycurrentposition  = blinkycurrentposition blinkycurrentstate
                                                                                                 , blinkycurrenttile      = blinkycurrenttile blinkycurrentstate
                                                                                                 , blinkytargettile       = newblinkytargettile
                                                                                                 , blinkytargettileseq    = newblinkytargettileseqf
                                                                                                 , blinkycurrentdirection = blinkycurrentdirection blinkycurrentstate
                                                                                                 , blinkycurrentspeed     = blinkycurrentspeed blinkycurrentstate
                                                                                                 , blinkydotcounter       = blinkydotcounter blinkycurrentstate
                                                                                                 } 
                                                       return newblinkystate
                                                 | otherwise
                                                 -> do let neighbors = Seq.filter (\x -> elem (tilenumberastar minqe) (adjacenttoastar x))
                                                                       alltiledataastarinit 
                                                       let anew      = a { openset = allq }
                                                       a' <- go anew
                                                                neighbors
                                                       astarloop a'
        where
          go a Seq.Empty                             = return a 
          go a (currentneighbor :<| restofneighbors) = do blinkycurrentstate <- CCSTM.readTVarIO $ 
                                                                                blinkystate gd
                                                          pacmancurrentstate <- CCSTM.readTVarIO $
                                                                                pacmanstate gd
                                                          let blinkyct      = blinkycurrenttile blinkycurrentstate
                                                          let pacmanct      = pacmancurrenttile pacmancurrentstate
                                                          let pacmanctastar = TileDataAStar { tilenumberastar     = tilenumber pacmanct
                                                                                            , tilecoordinateastar = tilecoordinate pacmanct
                                                                                            , tileoccupiedastar   = tileoccupied pacmanct
                                                                                            , cookiedataastar     = cookiedata pacmanct
                                                                                            , walldataastar       = walldata pacmanct
                                                                                            , adjacenttoastar     = adjacentto pacmanct
                                                                                            , fscoreastar         = 0
                                                                                            }
                                                          let hn         = manhattanDistance currentneighbor
                                                                                             pacmanctastar
                                                          let disttog    = manhattanDistance currentneighbor
                                                                                             blinkyct
                                                          let trialscore = (DMS.findWithDefault maxBound
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
          getPath m = do pacmancurrentstate <- CCSTM.readTVarIO $
                                               pacmanstate gd 
                         let pacmanct      = pacmancurrenttile pacmancurrentstate
                         let pacmanctastar = TileDataAStar { tilenumberastar     = tilenumber pacmanct
                                                           , tilecoordinateastar = tilecoordinate pacmanct
                                                           , tileoccupiedastar   = tileoccupied pacmanct
                                                           , cookiedataastar     = cookiedata pacmanct
                                                           , walldataastar       = walldata pacmanct
                                                           , adjacenttoastar     = adjacentto pacmanct
                                                           , fscoreastar         = 0
                                                           }
                         return  $ reverse $ pacmanctastar : unfoldr go pacmanctastar
            where
              go n = (\x -> (x,x)) <$> DMS.lookup n
                                                  m

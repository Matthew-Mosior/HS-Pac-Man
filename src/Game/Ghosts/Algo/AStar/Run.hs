module Game.Ghosts.Algo.AStar.Run where

import Game.Types (Ghost)
import Graphcs.Map.Static.Tiles.AllTileData
import Game.Ghosts.Algo.AStar.Definition
import Game.Ghosts.Algo.AStar.Default.Blinky
import Game.Ghosts.Algo.AStar.Default.Pinky
import Game.Ghosts.Algo.AStar.Default.Inky
import Game.Ghosts.Algo.AStar.Default.Clyde

import Control.Concurrent.STM as CCSTM
import Data.Foldable as DFold (toList)
import Data.PQueue.Max as DPQM
import Data.Sequence as Seq (filter)


runAStarBlinky :: GameState
               -> IO BlinkyState
runAStarBlinky gs = do
  blinkycurrentstate <- CCSTM.readTVarIO $ 
                        blinkystate gs
  pacmancurrentstate <- CCSTM.readTVarIO $
                        pacmanstate gs
  let blinkyct  = blinkycurrenttile $
                  blinkycurrentstate
  let pacmanct  = pacmancurrenttile $
                  pacmancurrentstate
  let pqstart   = DPQM.singleton blinkyct
  astarloop ( AStarData { camefrom = DMS.empty
                        , gscore   = DMS.singleton 1 blinkyct 
                        , openset  = DPQM.insert pqstart
                        }
            )
  astarloop a = case (DPQM.maxView pqstart) of
    Nothing           -> return blinkyastardefault
    Just (maxqe,allq) -> if | maxqe == pacmanct
                            -> do let newblinkytargettile    = 
                                  let newblinkytargettileseq = 
                                  let newblinkystate         = BlinkyState
                                  return newblinkystate
                            | otherwise
			    -> do let neighbors = (\(x:_) -> x) $
                                                  filter (\(x,_) -> x == maxqe)
						  (AG.adjacencyList ghostgraph)
                                  let a' = DMS.foldlWithKey go
                                                            a
                                                            { openset = allq }
                                                            neighbors
                                  astarloop a'
    where
      go a n _ = do let gn = gscore a
                    let hn = 
                    let trialscore = g maxqe +
                    if | trialscore >= gn n
                       -> a
                       | otherwise
                       -> AStarData { camefrom = 
                                    , gscore   = 
                                    , openset  =
                                    }
      getPath = reverse $ pacmanct : unfoldr go pacmanct
        where go n = (\x -> (x,x)) <$> DMS.lookup n m

runAStarPinky :: GameState
              -> IO PinkyState

runAStarInky :: GameState
	     -> IO InkyState

runAStarClyde :: GameState
              -> IO ClydeState

module Game.Ghosts.Algo.AStar.Default.Pinky where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Default

import Data.Sequence as Seq (empty)


pinkyastardefault :: PinkyState
pinkyastardefault = PinkyState { pinkycurrentmode      = Chase
                               , pinkycurrentdrawstate = GhostRegularDraw
                               , pinkycurrentposition  = ((-1),(-1))
                               , pinkycurrenttile      = Just defaulttileastar
                               , pinkytargettile       = defaulttileastar
                               , pinkytargettileseq    = Seq.empty
                               , pinkycurrentdirection = None
                               , pinkycurrentspeed     = (-1)
                               , pinkydotcounter       = (-1)
                               , pinkyghsl             = Nothing
                               }

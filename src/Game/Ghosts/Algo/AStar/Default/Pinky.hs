module Game.Ghosts.Algo.AStar.Default.Pinky where

import Game.Types
import Graphics.Map.Static.Tiles.Default

import Data.Sequence as Seq (empty)


pinkyastardefault :: PinkyState
pinkyastardefault = PinkyState { pinkycurrentmode      = Chase
                               , pinkycurrentposition  = ((-1),(-1))
                               , pinkycurrenttile      = Just defaulttile
                               , pinkytargettile       = defaulttile
                               , pinkytargettileseq    = Seq.empty
                               , pinkycurrentdirection = None
                               , pinkycurrentspeed     = (-1)
                               , pinkydotcounter       = (-1)
                               }

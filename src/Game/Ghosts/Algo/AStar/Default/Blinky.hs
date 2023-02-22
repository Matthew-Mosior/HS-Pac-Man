module Game.Ghosts.Algo.AStar.Default.Blinky where

import Game.Types
import Graphics.Map.Static.Tiles.Default

import Data.Sequence as Seq (empty)


blinkyastardefault :: BlinkyState
blinkyastardefault = BlinkyState { blinkycurrentmode      = Chase 
                                 , blinkycurrentposition  = ((-1),(-1))
                                 , blinkycurrenttile      = defaulttile
                                 , blinkytargettile       = defaulttile
                                 , blinkytargettileseq    = Seq.empty
                                 , blinkycurrentdirection = None 
                                 , blinkycurrentspeed     = (-1)
                                 , blinkydotcounter       = (-1)
                                 } 

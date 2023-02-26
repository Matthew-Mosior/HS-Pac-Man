module Game.Ghosts.Algo.AStar.Default.Blinky where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Default

import Data.Sequence as Seq (empty)


blinkyastardefault :: BlinkyState
blinkyastardefault = BlinkyState { blinkycurrentmode      = Chase
                                 , blinkycurrentdrawstate = GhostRegularDraw
                                 , blinkycurrentposition  = ((-1),(-1))
                                 , blinkycurrenttile      = defaulttileastar
                                 , blinkytargettile       = defaulttileastar
                                 , blinkytargettileseq    = Seq.empty
                                 , blinkycurrentdirection = None
                                 , blinkycurrentspeed     = (-1)
                                 , blinkydotcounter       = (-1)
                                 } 

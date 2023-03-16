module Game.Ghosts.Algo.AStar.Default.Inky where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Default

import Data.Sequence as Seq (empty)


inkyastardefault :: InkyState
inkyastardefault = InkyState { inkycurrentmode      = Chase
                             , inkycurrentdrawstate = GhostRegularDraw
                             , inkycurrentposition  = ((-1),(-1))
                             , inkycurrenttile      = Just defaulttileastar
                             , inkytargettile       = defaulttileastar
                             , inkytargettileseq    = Seq.empty
                             , inkycurrentdirection = None
                             , inkycurrentspeed     = (-1)
                             , inkydotcounter       = (-1)
                             , inkyghsl             = Nothing
                             }

module Game.Ghosts.Algo.AStar.Default.Inky where

import Game.Types
import Graphics.Map.Static.Tiles.Default

import Data.Sequence as Seq (empty)


inkyastardefault :: InkyState
inkyastardefault = InkyState { inkycurrentmode      = Chase
                             , inkycurrentposition  = ((-1),(-1))
                             , inkycurrenttile      = Just defaulttile
                             , inkytargettile       = defaulttile
                             , inkytargettileseq    = Seq.empty
                             , inkycurrentdirection = None
                             , inkycurrentspeed     = (-1)
                             , inkydotcounter       = (-1)
                             }

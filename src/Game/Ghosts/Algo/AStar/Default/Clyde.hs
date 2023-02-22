module Game.Ghosts.Algo.AStar.Default.Clyde where

import Game.Types
import Graphics.Map.Static.Tiles.Default

import Data.Sequence as Seq (empty)


clydeastardefault :: ClydeState
clydeastardefault = ClydeState { clydecurrentmode      = Chase
                               , clydecurrentposition  = ((-1),(-1))
                               , clydecurrenttile      = Just defaulttile
                               , clydetargettile       = defaulttile
                               , clydetargettileseq    = Seq.empty
                               , clydecurrentdirection = None
                               , clydecurrentspeed     = (-1)
                               , clydedotcounter       = (-1)
                               }

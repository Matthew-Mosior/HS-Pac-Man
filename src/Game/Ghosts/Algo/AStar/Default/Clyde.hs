module Game.Ghosts.Algo.AStar.Default.Clyde where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Default

import Data.Sequence as Seq (empty)


clydeastardefault :: ClydeState
clydeastardefault = ClydeState { clydecurrentmode      = Chase
                               , clydecurrentdrawstate = GhostRegularDraw
                               , clydecurrentposition  = ((-1),(-1))
                               , clydecurrenttile      = Just defaulttileastar
                               , clydetargettile       = defaulttileastar
                               , clydetargettileseq    = Seq.empty
                               , clydecurrentdirection = None
                               , clydecurrentspeed     = (-1)
                               , clydedotcounter       = (-1)
                               }

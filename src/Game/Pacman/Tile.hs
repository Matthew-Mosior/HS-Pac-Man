module Game.Pacman.Tile where

import Game.Pacman.PacmanCoorToCookieCoor
import Game.Types
import Graphics.Map.Static.Tiles.Default
import Graphics.Map.Static.Tiles.Definition

import Data.Sequence as Seq (filter,viewl,Seq(..),ViewL(..))


updatePacmanTile :: Seq TileData
                 -> PacmanState
                 -> PacmanState
updatePacmanTile ts ps =
  PacmanState { pacmancurrentposition  = pacmancurrentposition ps
              , pacmancurrenttile      = case Seq.viewl (Seq.filter (\t -> (centercoordinates $ cookiedata t) == (pacmanCoorToCookieCoor $ pacmancurrentposition ps)) ts) of
                                           Seq.EmptyL   -> defaulttile
                                           (x Seq.:< _) -> x
              , pacmancurrentdirection = pacmancurrentdirection ps
              , pacmancurrentstate     = pacmancurrentstate ps
              , pacmancurrentdrawstate = pacmancurrentdrawstate ps
              , pacmancurrentspeed     = pacmancurrentspeed ps
              , pacmancurrentlives     = pacmancurrentlives ps
              }

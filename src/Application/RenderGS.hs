module Application.RenderGS where

import Game.Types
import Game.GameData.Tile
import Game.Ghosts.Algo.AStar.Run.Blinky
import Game.Ghosts.Algo.AStar.Run.Pinky
import Game.Ghosts.Algo.AStar.Run.Inky
import Game.Ghosts.Algo.AStar.Run.Clyde
import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.Movement.Blinky
import Game.Ghosts.Movement.Pinky
import Game.Ghosts.Movement.Inky
import Game.Ghosts.Movement.Clyde
import Game.Initial.Level1
import Game.Initial.Level2_4
import Game.Initial.Level5_All
import Game.Pacman.Movement
import Game.Pacman.PacmanCoorToCookieCoor
import Game.Pacman.Tile
import Game.Ghosts.GhostCoorToCookieCoor
import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Default
import Graphics.Map.Static.Tiles.Definition
import Graphics.Map.Static.Tiles.TileToCookieCoor

import Graphics.Map.Dynamic.Pacman.PacmanStart
import Graphics.Map.Dynamic.Ghosts.BlinkyStart
import Graphics.Map.Dynamic.Ghosts.PinkyStart
import Graphics.Map.Dynamic.Ghosts.InkyStart
import Graphics.Map.Dynamic.Ghosts.ClydeStart

import Graphics.Map.Dynamic.Cookies.AllCookies
import Graphics.Map.Dynamic.Cookies.DrawCookies

import Rendering.GhostHouse.StartingPositions
import Rendering.PreRenderMassivArray

import Graphics.Gloss
import Graphics.Gloss.Interface.IO.Interact
import Graphics.Gloss.Raster.Massiv.Internal
import Data.Massiv.Array as DMA
import Data.Massiv.Array.Mutable as DMAM
import Data.Maybe (isJust,isNothing)
import Data.Sequence as DSeq (singleton,(><))


windowwidth :: Int
windowwidth = 1120

windowheight :: Int
windowheight = 1440

window :: Display
window = InWindow "Pac-Man Clone"
                  (windowwidth,windowheight)--(1120,1440) --(224*5,288*5)
                  (0,0)

renderGS :: GameData
         -> IO (Array S Ix2 ColorMassiv)
renderGS gd = do
  --Create initial marray.
  initialprerendermarray          <- DMAM.newMArray (Sz2 windowheight windowwidth)--(Sz2 1440 1120)
                                                    (makeColorMassiv 0.0 0.0 0.0 1.0)
  --Grab static map assets.
  let staticmapassetscurrentstate = staticmapassets gd
  --Grab tile state.
  let tilecurrentstate            = tilestate gd
  --Grab pacman state.
  let pacmancurrentstate          = pacmanstate gd
  --Grab blinky state.
  let blinkycurrentstate          = blinkystate gd
  --Grab pinky state.
  let pinkycurrentstate           = pinkystate gd
  --Grab inky state.
  let inkycurrentstate            = inkystate gd
  --Grab clyde state.
  let clydecurrentstate           = clydestate gd
  cookiescurrent                  <- drawCookies tilecurrentstate
                                                 allcookiedatainit
  pacmancurrent                   <- drawPacmanS (pacmancurrentposition pacmancurrentstate)
  blinkycurrent                   <- drawBlinkyS (blinkycurrentposition blinkycurrentstate)
  pinkycurrent                    <- drawPinkyS (pinkycurrentposition pinkycurrentstate)
  inkycurrent                     <- drawInkyS (inkycurrentposition inkycurrentstate)
  clydecurrent                    <- drawClydeS (clydecurrentposition clydecurrentstate)
  prerenderarray                  <- constructPreRenderMassivArray ( staticmapassetscurrentstate
                                                                     >< 
                                                                     (DSeq.singleton pacmancurrent)
                                                                     ><
                                                                     (DSeq.singleton blinkycurrent)
                                                                     ><
                                                                     (DSeq.singleton pinkycurrent)
                                                                     ><
                                                                     (DSeq.singleton inkycurrent)
                                                                     ><
                                                                     (DSeq.singleton clydecurrent)
                                                                   )
                                                                   initialprerendermarray 
  return prerenderarray

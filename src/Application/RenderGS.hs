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

import Graphics.Map.Static.Borders.InnerOuterBorder
import Graphics.Map.Static.Borders.OuterOuterBorder

import Graphics.Map.Static.GridLines.GridLines

import Graphics.Map.Static.Walls.Wall1
import Graphics.Map.Static.Walls.Wall2
import Graphics.Map.Static.Walls.Wall3
import Graphics.Map.Static.Walls.Wall4
import Graphics.Map.Static.Walls.Wall5
import Graphics.Map.Static.Walls.Wall6
import Graphics.Map.Static.Walls.Wall7
import Graphics.Map.Static.Walls.Wall8
import Graphics.Map.Static.Walls.Wall9
import Graphics.Map.Static.Walls.Wall10
import Graphics.Map.Static.Walls.Wall11
import Graphics.Map.Static.Walls.Wall12
import Graphics.Map.Static.Walls.Wall13
import Graphics.Map.Static.Walls.Wall14
import Graphics.Map.Static.Walls.Wall15
import Graphics.Map.Static.Walls.Wall16
import Graphics.Map.Static.Walls.Wall17
import Graphics.Map.Static.Walls.Wall18
import Graphics.Map.Static.Walls.Wall19

import Graphics.Map.Static.GhostHouse.InnerGhostHouse
import Graphics.Map.Static.GhostHouse.OuterGhostHouse

import Graphics.Map.Static.GhostHouseGate.GhostHouseGate

import Graphics.Map.Dynamic.Cookies.AllCookies
import Graphics.Map.Dynamic.Cookies.DrawCookies

import Rendering.GhostHouse.StartingPositions

import Graphics.Gloss
import Graphics.Gloss.Interface.IO.Interact
import Data.IORef
import Data.Maybe (isJust,isNothing)
import Data.Sequence as Seq (filter,findIndexL,index,viewl,ViewL(..))


window :: Display
window = InWindow "Pac-Man Clone"
                  (1120,1440) --(224*5,288*5)
                  (0,0)

renderGS :: GameData
         -> IO Picture
renderGS gd = do
  --Grab tile state.
  tilecurrentstate <- readIORef $
                      tilestate gd
  --Grab pacman state.
  pacmancurrentstate <- readIORef $
                        pacmanstate gd
  --Grab blinky state.
  blinkycurrentstate <- readIORef $
                        blinkystate gd
  --Grab pinky state.
  pinkycurrentstate <- readIORef $
                       pinkystate gd
  --Grab inky state.
  inkycurrentstate <- readIORef $
                      inkystate gd
  --Grab clyde state.
  clydecurrentstate <- readIORef $
                       clydestate gd
  createhorizontalgridlines <- horizontalgridlines
  createverticalgridlines <- verticalgridlines
  createinnerouterborder <- innerouterborder
  createouterouterborder <- outerouterborder
  createwall1 <- wall1
  createwall2 <- wall2
  createwall3 <- wall3
  createwall4 <- wall4
  createwall5 <- wall5
  createwall6 <- wall6
  createwall7 <- wall7
  createwall8 <- wall8
  createwall9 <- wall9
  createwall10 <- wall10
  createwall11 <- wall11
  createwall12 <- wall12
  createwall13 <- wall13
  createwall14 <- wall14
  createwall15 <- wall15
  createwall16 <- wall16
  createwall17 <- wall17
  createwall18 <- wall18
  createwall19 <- wall19
  createinnerghosthouse <- innerghosthouse
  createouterghosthouse <- outerghosthouse
  createghosthousegate <- ghosthousegate
  cookiescurrent <- drawCookies tilecurrentstate
                                allcookiedatainit
  pacmancurrent <- drawpacmans (pacmancurrentposition pacmancurrentstate) --drawpacmans pacmanstartingposition
  blinkycurrent <- drawblinkys (blinkycurrentposition blinkycurrentstate) --drawblinkys blinkystartingposition
  pinkycurrent  <- drawpinkys (pinkycurrentposition pinkycurrentstate)    --drawpinkys pinkystartingposition
  inkycurrent   <- drawinkys (inkycurrentposition inkycurrentstate)       --drawinkys inkystartingposition
  clydecurrent  <- drawclydes (clydecurrentposition clydecurrentstate)    --drawclydes clydestartingposition
  return $ Pictures [ createhorizontalgridlines
                    , createverticalgridlines
                    , createinnerouterborder
                    , createouterouterborder
                    , createwall1
                    , createwall2
                    , createwall3
                    , createwall4
                    , createwall5
                    , createwall6
                    , createwall7
                    , createwall8
                    , createwall9
                    , createwall10
                    , createwall11
                    , createwall12
                    , createwall13
                    , createwall14
                    , createwall15
                    , createwall16
                    , createwall17
                    , createwall18
                    , createwall19
                    , createinnerghosthouse
                    , createouterghosthouse
                    , createghosthousegate
                    , cookiescurrent
                    , pacmancurrent
                    , blinkycurrent
                    , pinkycurrent
                    , inkycurrent
                    , clydecurrent
                    ]

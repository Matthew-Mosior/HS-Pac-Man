module Graphics.Map.Map where

import Graphics.Map.Dynamic.Pacman.Pacman

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

import Graphics.Gloss


{-Define SDL2 window to display game.-}

window :: Display
window = InWindow "Pac-Man Clone"
                  (1120,1440) --(224*5,288*5)
                  (0,0)

{-------------------------------------}


{-Define all bitmaps making up the map.-}

initmap :: IO Picture
initmap = do
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
  createallcookiesinit <- allcookiesinit
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
                    , createallcookiesinit
                    ]

{---------------------------------------}

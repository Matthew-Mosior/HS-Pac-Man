module Application.UpdateGS where

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

import Graphics.Gloss
import Graphics.Gloss.Interface.IO.Interact
import Data.IORef
import Data.Maybe (isJust,isNothing)
import Data.Sequence as Seq (filter,findIndexL,index,viewl,ViewL(..))


updateGS :: Float
         -> GameData
         -> IO GameData
updateGS _ gd = do
  --Get current tile state.
  tilecurrentstate <- readIORef $
                      tilestate gd
  --Get pacman current state.
  pacmancurrentstate <- readIORef $
                        pacmanstate gd
  --Get blinky's current state.
  blinkycurrentstate <- readIORef $
                        blinkystate gd
  let blinkycurrenttiletn = tilenumberastar   $
                            blinkycurrenttile $
                            blinkycurrentstate
  --Get pinky's current state.
  pinkycurrentstate <- readIORef $
                       pinkystate gd
  let pinkycurrenttiletn = case (pinkycurrenttile pinkycurrentstate) of
                             Nothing   -> tilenumberastar defaulttileastar
                             Just tile -> tilenumberastar tile
  --Get inky's current state.
  inkycurrentstate <- readIORef $
                      inkystate gd
  let inkycurrenttiletn = case (inkycurrenttile inkycurrentstate) of
                            Nothing   -> tilenumberastar defaulttileastar
                            Just tile -> tilenumberastar tile
  --Get clyde's current state.
  clydecurrentstate <- readIORef $
                       clydestate gd
  let clydecurrenttiletn = case (clydecurrenttile clydecurrentstate) of
                             Nothing   -> tilenumberastar defaulttileastar
                             Just tile -> tilenumberastar tile
  --Check to see if pacman has been caught by one of the ghosts.
  if | (tilenumber $ pacmancurrenttile $ pacmancurrentstate) /= blinkycurrenttiletn &&
       (tilenumber $ pacmancurrenttile $ pacmancurrentstate) /= pinkycurrenttiletn  &&
       (tilenumber $ pacmancurrenttile $ pacmancurrentstate) /= inkycurrenttiletn   &&
       (tilenumber $ pacmancurrenttile $ pacmancurrentstate) /= clydecurrenttiletn
     -> --Pacman wasn't caught by any of the ghosts.
        --Check to see if the all of the dots have been eaten by pacman.
        if | all (\x -> isNothing $ cookietype $ cookiedata x) tilecurrentstate
           -> --Level was finished, bump level number.
              do currentlevel' <- readIORef $
                                  currentlevel gd
                 let currentlevelnew = currentlevel' + 1
		 if | currentlevelnew >= 2 &&
                      currentlevelnew <= 4
		    -> initialgamestatelevel2_4 currentlevelnew
                    | otherwise
                    -> initialgamestatelevel5_all currentlevelnew
           | otherwise
           -> --Still more dots to be eaten.
              return gd
     | otherwise
     -> --Pacman was caught by a ghost!
        initialgamestatelevel1

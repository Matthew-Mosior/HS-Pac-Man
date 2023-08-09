module Application.UpdateGS where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Initial.Level1
import Game.Initial.Level2_4
import Game.Initial.Level5_All
import Graphics.Map.Static.Tiles.Definition

import Data.Maybe (isNothing)


updateGS :: Float
         -> GameData
         -> IO GameData
updateGS _ gd = do
  --Get current tile state.
  let tilecurrentstate = tilestate gd
  --Get pacman current state.
  let pacmancurrentstate = pacmanstate gd
  --Get blinky's current state.
  let blinkycurrentstate = blinkystate gd
  let blinkycurrenttiletn = tilenumberastar   $
                            blinkycurrenttile $
                            blinkycurrentstate
  --Get pinky's current state.
  let pinkycurrentstate = pinkystate gd
  let pinkycurrenttiletn = case (pinkycurrenttile pinkycurrentstate) of
                             Nothing   -> tilenumberastar defaulttileastar
                             Just tile -> tilenumberastar tile
  --Get inky's current state.
  let inkycurrentstate = inkystate gd
  let inkycurrenttiletn = case (inkycurrenttile inkycurrentstate) of
                            Nothing   -> tilenumberastar defaulttileastar
                            Just tile -> tilenumberastar tile
  --Get clyde's current state.
  let clydecurrentstate = clydestate gd
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
              do let currentlevel' = currentlevel gd
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

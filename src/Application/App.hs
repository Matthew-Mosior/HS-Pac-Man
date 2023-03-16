module Application.App where

import Application.HandleKeys
import Application.UpdateGS
import Application.RenderGS
import Game.Initial.Definition
import Game.Initial.Level1
import Game.Initial.Level2_4
import Game.Initial.Level5_All

import Control.Monad
import Graphics.Gloss.Interface.IO.Game


fps :: Int
fps = 60

runPacMan :: IO ()
runPacMan = do
  --Initialize starting game state.
  startinggamestate <- initialgamestatelevel1
  --Run game loop.
  playIO window
         black
         fps
         startinggamestate
         renderGS
         handleKeys
         updateGS
    --createinitmap <- initmap
    --display window black createinitmap

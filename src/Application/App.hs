module Application.App where

import Application.HandleKeys
import Application.UpdateGS
import Application.RenderGS
import Game.Initial.Definition
import Game.Initial.Level1
import Game.Initial.Level2_4
import Game.Initial.Level5_All
import Graphics.Gloss.Raster.Array


fps :: Int
fps = 120

runPacMan :: IO ()
runPacMan = do
  --Initialize starting game state.
  startinggamestate <- initialgamestatelevel1
  --Run game loop.
  playArrayMassivIO window
                    (1,1)
                    fps
                    startinggamestate
                    renderGS
                    handleKeys
                    updateGS

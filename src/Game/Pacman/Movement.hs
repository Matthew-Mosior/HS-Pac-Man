module Game.Pacman.Movement where

import Game.Types

import Graphics.Gloss.Interface.IO.Interact


updatePacmanMovement :: Event 
                     -> PacmanState
                     -> PacmanState
updatePacmanMovement (EventKey (SpecialKey KeyUp)    _ _ _) ps =
  PacmanState { pacmancurrentposition  = ( fst $ pacmancurrentposition ps
                                         , (\y -> y - 1) $ snd $ pacmancurrentposition ps
                                         )
              , pacmancurrenttile      = pacmancurrenttile ps
              , pacmancurrentdirection = Game.Types.Up
              , pacmancurrentstate     = pacmancurrentstate ps
              , pacmancurrentdrawstate = if | (pacmancurrentdrawstate ps) == PacmanRegularDraw
                                            -> PacmanAltDraw
                                            | otherwise
                                            -> PacmanRegularDraw
              , pacmancurrentspeed     = pacmancurrentspeed ps
              , pacmancurrentlives     = pacmancurrentlives ps
              }
updatePacmanMovement (EventKey (SpecialKey KeyDown)  _ _ _) ps =
  PacmanState { pacmancurrentposition  = ( fst $ pacmancurrentposition ps
                                         , (\y -> y + 1) $ snd $ pacmancurrentposition ps
                                         )
              , pacmancurrenttile      = pacmancurrenttile ps
              , pacmancurrentdirection = Game.Types.Down
              , pacmancurrentstate     = pacmancurrentstate ps
              , pacmancurrentdrawstate = if | (pacmancurrentdrawstate ps) == PacmanRegularDraw
                                            -> PacmanAltDraw
                                            | otherwise
                                            -> PacmanRegularDraw
              , pacmancurrentspeed     = pacmancurrentspeed ps
              , pacmancurrentlives     = pacmancurrentlives ps
              }
updatePacmanMovement (EventKey (SpecialKey KeyLeft)  _ _ _) ps =
  PacmanState { pacmancurrentposition  = ( (\x -> x - 1) $ fst $ pacmancurrentposition ps
                                         , snd $ pacmancurrentposition ps
                                         )
              , pacmancurrenttile      = pacmancurrenttile ps
              , pacmancurrentdirection = Game.Types.Left
              , pacmancurrentstate     = pacmancurrentstate ps
              , pacmancurrentdrawstate = if | (pacmancurrentdrawstate ps) == PacmanRegularDraw
                                            -> PacmanAltDraw
                                            | otherwise
                                            -> PacmanRegularDraw
              , pacmancurrentspeed     = pacmancurrentspeed ps
              , pacmancurrentlives     = pacmancurrentlives ps
              }
updatePacmanMovement (EventKey (SpecialKey KeyRight) _ _ _) ps =
  PacmanState { pacmancurrentposition  = ( (\x -> x + 1) $ fst $ pacmancurrentposition ps
                                         , (\y -> y - 1) $ snd $ pacmancurrentposition ps
                                         )
              , pacmancurrenttile      = pacmancurrenttile ps
              , pacmancurrentdirection = Game.Types.Right
              , pacmancurrentstate     = pacmancurrentstate ps
              , pacmancurrentdrawstate = if | (pacmancurrentdrawstate ps) == PacmanRegularDraw
                                            -> PacmanAltDraw
                                            | otherwise
                                            -> PacmanRegularDraw
              , pacmancurrentspeed     = pacmancurrentspeed ps
              , pacmancurrentlives     = pacmancurrentlives ps
              }
updatePacmanMovement _                                      ps = ps

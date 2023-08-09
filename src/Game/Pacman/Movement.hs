module Game.Pacman.Movement where

import Game.Types

import Graphics.Gloss.Interface.IO.Game

updatePacmanMovementNoInput :: PacmanState
                            -> PacmanState
updatePacmanMovementNoInput ps =
  PacmanState { pacmancurrentposition  = if | (pacmancurrentdirection ps) == Game.Types.Up
                                            -> ( fst $ pacmancurrentposition ps
                                               , (\y -> y - 1) $ snd $ pacmancurrentposition ps
                                               )
                                            | (pacmancurrentdirection ps) == Game.Types.Down
                                            -> ( fst $ pacmancurrentposition ps
                                               , (\y -> y + 1) $ snd $ pacmancurrentposition ps
                                               )
                                            | (pacmancurrentdirection ps) == Game.Types.Left
                                            -> ( (\x -> x - 1) $ fst $ pacmancurrentposition ps
                                               , snd $ pacmancurrentposition ps
                                               )
                                            | otherwise
                                            -> ( (\x -> x + 1) $ fst $ pacmancurrentposition ps
                                               , snd $ pacmancurrentposition ps
                                               )
              , pacmancurrenttile      = pacmancurrenttile ps
              , pacmancurrentdirection = pacmancurrentdirection ps
              , pacmancurrentstate     = pacmancurrentstate ps
              , pacmancurrentdrawstate = if | (pacmancurrentdrawstate ps) == PacmanRegularDraw
                                            -> PacmanAltDraw
                                            | otherwise
                                            -> PacmanRegularDraw
              , pacmancurrentspeed     = pacmancurrentspeed ps
              , pacmancurrentlives     = pacmancurrentlives ps
              }

updatePacmanMovement :: Event 
                     -> PacmanState
                     -> PacmanState
updatePacmanMovement (EventKey (Char 'w') _ _ _) ps =
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
updatePacmanMovement (EventKey (Char 's') _ _ _) ps =
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
updatePacmanMovement (EventKey (Char 'a') _ _ _) ps =
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
updatePacmanMovement (EventKey (Char 'd') _ _ _) ps =
  PacmanState { pacmancurrentposition  = ( (\x -> x + 1) $ fst $ pacmancurrentposition ps
                                         , snd $ pacmancurrentposition ps
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

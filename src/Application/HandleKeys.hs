module Application.HandleKeys where

import Game.Types
import Game.GameData.Tile
import Game.Ghosts.Algo.AStar.Run.Blinky
import Game.Ghosts.Algo.AStar.Run.Pinky
import Game.Ghosts.Algo.AStar.Run.Inky
import Game.Ghosts.Algo.AStar.Run.Clyde
import Game.Ghosts.Movement.Blinky
import Game.Ghosts.Movement.Pinky
import Game.Ghosts.Movement.Inky
import Game.Ghosts.Movement.Clyde
import Game.Pacman.Movement
import Game.Pacman.PacmanCoorToCookieCoor
import Game.Pacman.Tile
import Game.Ghosts.GhostCoorToCookieCoor
import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Default
import Graphics.Map.Static.Tiles.Definition

import Graphics.Gloss.Interface.IO.Game as GGIIG
import Data.Maybe (isJust)
import Data.Sequence as Seq (filter,viewl,ViewL(..))


handleKeys :: Event
           -> GameData
           -> IO GameData
handleKeys        (EventMotion _)                               gd = return gd
handleKeys        (EventResize _)                               gd = return gd
handleKeys        (EventKey    (SpecialKey _)  GGIIG.Down _ _)  gd = return gd
handleKeys        (EventKey    (SpecialKey _)  GGIIG.Up   _ _)  gd = return gd
handleKeys        (EventKey    (MouseButton _) GGIIG.Down _ _)  gd = return gd
handleKeys        (EventKey    (MouseButton _) GGIIG.Up   _ _)  gd = return gd
handleKeys cevent@(EventKey    (Char 'w') GGIIG.Down _ _)       gd =
  return GameData { gamestate       = InProgress
                  , tilestate       = do --Get current tile state.
                                         let tilecurrentstate = tilestate gd
                                         --Get current pacman state.
                                         let pacmancurrentstate = pacmanstate gd
                                         --Get the current tile center coordinates that pacman occupies.
                                         let pacmancurrentcc = pacmanCoorToCookieCoor $
                                                               pacmancurrentposition pacmancurrentstate
                                         let pacmanincenteroftile = case Seq.viewl (Seq.filter (\x -> pacmancurrentcc == (centercoordinates $ cookiedata x)) tilecurrentstate) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         let pacmanintilethatcontainscookie = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                                Seq.EmptyL   -> False
                                                                                (x Seq.:< _) -> isJust $ cookietype $ cookiedata x
                                         --Run through positional possibilities for Pacman.
                                         if | --Pacman is in the center of a tile AND the tile contains a cookie.
                                              pacmanincenteroftile &&
                                              pacmanintilethatcontainscookie
                                            -> do --Get tile to be updated since pacman just ate a cookie.
                                                  let tiletobeupdated = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                          Seq.EmptyL   -> defaulttile
                                                                          (x Seq.:< _) -> x
                                                  --Update tilestate to reflect the change in the tile (cookie was eaten).
                                                  updateGameDataTile tiletobeupdated
                                                                     tilecurrentstate
                                            | otherwise
                                            -> tilestate gd
                  , currentlevel    = currentlevel gd
                  , currentscore    = currentscore gd
                  , pacmanstate     = do --Get current tile state.
                                         let tilecurrentstate = tilestate gd
                                         --Get current pacman state.
                                         let pacmancurrentstate = pacmanstate gd
                                         --Get the current tile center coordinates that pacman occupies.
                                         let pacmancurrentcc = pacmanCoorToCookieCoor $
                                                               pacmancurrentposition pacmancurrentstate
                                         let pacmanincenteroftile = case Seq.viewl (Seq.filter (\x -> pacmancurrentcc == (centercoordinates $ cookiedata x)) tilecurrentstate) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         let pacmanintilethatcontainscookie = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                                Seq.EmptyL   -> False
                                                                                (x Seq.:< _) -> isJust $ cookietype $ cookiedata x
                                         --Run through positional possibilities for Pacman.
                                         if | --Pacman is in the center of a tile AND the tile contains a cookie.
                                              pacmanincenteroftile &&
                                              pacmanintilethatcontainscookie
                                            -> do --Update Pacman's position after moving up.
                                                  let updatedpacmanstatef = updatePacmanMovement cevent 
                                                                                                 pacmancurrentstate
                                                  --Update Pacman's current tile after moving up.
                                                  updatePacmanTile tilecurrentstate
                                                                   updatedpacmanstatef 
                                            | --Pacman is now in the center of a tile AND the tile DOESNT contain a cookie.
                                              pacmanincenteroftile &&
                                              (not pacmanintilethatcontainscookie)
                                            -> do --Update Pacman's position after moving up.
                                                  let updatedpacmanstatef = updatePacmanMovement cevent 
                                                                                                 pacmancurrentstate
                                                  --Update Pacman's current tile after moving up.
                                                  updatePacmanTile tilecurrentstate
                                                                   updatedpacmanstatef
                                            | --Pacman is not in the center of a tile.
                                              otherwise
                                            -> --Update Pacman's position after moving up.
                                               updatePacmanMovement cevent
                                                                       pacmancurrentstate
                  , blinkystate     = do --Get the current tile center coordinates that blinky occupies.
                                         let blinkycurrentcc = ghostCoorToCookieCoor $
                                                               blinkycurrentposition (blinkystate gd)
                                         let blinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> blinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         if | blinkyincenteroftile
                                            -> do --Update blinky's state.
                                                  let blinkyastar   = runAStarBlinky gd
                                                  --Update blinky's movement.
                                                  updateBlinkyMovement blinkyastar
                                            | otherwise
                                            -> --Update blinky's state.
                                               updateBlinkyMovement (blinkystate gd)
                  , pinkystate      = if | (pinkycurrentmode (pinkystate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that pinky occupies.
                                               let pinkycurrentcc = ghostCoorToCookieCoor $
                                                                    pinkycurrentposition (pinkystate gd)
                                               let pinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> pinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                           Seq.EmptyL   -> False
                                                                           (_ Seq.:< _) -> True
                                               if | pinkyincenteroftile
                                                  -> do --Update pinky's state.
                                                        let pinkyastar = runAStarPinky gd
                                                        --Update pinky's movement.
                                                        updatePinkyMovement pinkyastar
                                                  | otherwise
                                                  -> --Update pinky's movement.
                                                     updatePinkyMovement (pinkystate gd)
                                         | otherwise
                                         -> pinkystate gd
                  , inkystate       = if | (inkycurrentmode (inkystate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that inky occupies.
                                               let inkycurrentcc = ghostCoorToCookieCoor $
                                                                   inkycurrentposition (inkystate gd)
                                               let inkyincenteroftile = case Seq.viewl (Seq.filter (\x -> inkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                          Seq.EmptyL   -> False
                                                                          (_ Seq.:< _) -> True
                                               if | inkyincenteroftile
                                                  -> do --Update inky's state.
                                                        let inkyastar  = runAStarInky gd
                                                        --Update pinky's and inky's movement.
                                                        updateInkyMovement inkyastar 
                                                  | otherwise
                                                  -> --Update inky's movement.
                                                     updateInkyMovement (inkystate gd)
                                         | otherwise
                                         -> inkystate gd   
                  , clydestate      = if | (clydecurrentmode (clydestate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that clyde occupies.
                                               let clydecurrentcc = ghostCoorToCookieCoor $
                                                                    clydecurrentposition (clydestate gd)
                                               let clydeincenteroftile = case Seq.viewl (Seq.filter (\x -> clydecurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                           Seq.EmptyL   -> False
                                                                           (_ Seq.:< _) -> True
                                               if | clydeincenteroftile
                                                  -> do --Update clyde's state.
                                                        let clydeastar  = runAStarClyde gd
                                                        --Update clyde's movement.
                                                        updateClydeMovement clydeastar 
                                                  | otherwise
                                                  -> --Update clyde's movement.
                                                     updateClydeMovement (clydestate gd)
                                         | otherwise
                                         -> clydestate gd
                  , doteatentimer   = doteatentimer gd
                  , staticmapassets = staticmapassets gd
                  , lastkeypressed  = Just 'w'
                  }
handleKeys cevent@(EventKey    (Char 's') GGIIG.Down _ _)      gd =
  return GameData { gamestate       = InProgress
                  , tilestate       = do --Get current tile state.
                                         let tilecurrentstate = tilestate gd
                                         --Get current pacman state.
                                         let pacmancurrentstate = pacmanstate gd
                                         --Get the current tile center coordinates that pacman occupies.
                                         let pacmancurrentcc = pacmanCoorToCookieCoor $
                                                               pacmancurrentposition pacmancurrentstate
                                         let pacmanincenteroftile = case Seq.viewl (Seq.filter (\x -> pacmancurrentcc == (centercoordinates $ cookiedata x)) tilecurrentstate) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         let pacmanintilethatcontainscookie = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                                Seq.EmptyL   -> False
                                                                                (x Seq.:< _) -> isJust $ cookietype $ cookiedata x
                                         --Run through positional possibilities for Pacman.
                                         if | --Pacman is in the center of a tile AND the tile contains a cookie.
                                              pacmanincenteroftile &&
                                              pacmanintilethatcontainscookie
                                            -> do --Get tile to be updated since pacman just ate a cookie.
                                                  let tiletobeupdated = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                          Seq.EmptyL   -> defaulttile
                                                                          (x Seq.:< _) -> x
                                                  --Update tilestate to reflect the change in the tile (cookie was eaten).
                                                  updateGameDataTile tiletobeupdated
                                                                     tilecurrentstate
                                            | otherwise
                                            -> tilestate gd
                  , currentlevel    = currentlevel gd
                  , currentscore    = currentscore gd
                  , pacmanstate     = do --Get current tile state.
                                         let tilecurrentstate = tilestate gd
                                         --Get current pacman state.
                                         let pacmancurrentstate = pacmanstate gd
                                         --Get the current tile center coordinates that pacman occupies.
                                         let pacmancurrentcc = pacmanCoorToCookieCoor $
                                                               pacmancurrentposition pacmancurrentstate
                                         let pacmanincenteroftile = case Seq.viewl (Seq.filter (\x -> pacmancurrentcc == (centercoordinates $ cookiedata x)) tilecurrentstate) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         let pacmanintilethatcontainscookie = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                                Seq.EmptyL   -> False
                                                                                (x Seq.:< _) -> isJust $ cookietype $ cookiedata x
                                         --Run through positional possibilities for Pacman.
                                         if | --Pacman is in the center of a tile AND the tile contains a cookie.
                                              pacmanincenteroftile &&
                                              pacmanintilethatcontainscookie
                                            -> do --Update Pacman's position after moving up.
                                                  let updatedpacmanstatef = updatePacmanMovement cevent 
                                                                                                 pacmancurrentstate
                                                  --Update Pacman's current tile after moving up.
                                                  updatePacmanTile tilecurrentstate
                                                                   updatedpacmanstatef 
                                            | --Pacman is now in the center of a tile AND the tile DOESNT contain a cookie.
                                              pacmanincenteroftile &&
                                              (not pacmanintilethatcontainscookie)
                                            -> do --Update Pacman's position after moving up.
                                                  let updatedpacmanstatef = updatePacmanMovement cevent 
                                                                                                 pacmancurrentstate
                                                  --Update Pacman's current tile after moving up.
                                                  updatePacmanTile tilecurrentstate
                                                                   updatedpacmanstatef
                                            | --Pacman is not in the center of a tile.
                                              otherwise
                                            -> --Update Pacman's position after moving up.
                                               updatePacmanMovement cevent
                                                                       pacmancurrentstate
                  , blinkystate     = do --Get the current tile center coordinates that blinky occupies.
                                         let blinkycurrentcc = ghostCoorToCookieCoor $
                                                               blinkycurrentposition (blinkystate gd)
                                         let blinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> blinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         if | blinkyincenteroftile
                                            -> do --Update blinky's state.
                                                  let blinkyastar   = runAStarBlinky gd
                                                  --Update blinky's movement.
                                                  updateBlinkyMovement blinkyastar
                                            | otherwise
                                            -> --Update blinky's state.
                                               updateBlinkyMovement (blinkystate gd)
                  , pinkystate      = if | (pinkycurrentmode (pinkystate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that pinky occupies.
                                               let pinkycurrentcc = ghostCoorToCookieCoor $
                                                                    pinkycurrentposition (pinkystate gd)
                                               let pinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> pinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                           Seq.EmptyL   -> False
                                                                           (_ Seq.:< _) -> True
                                               if | pinkyincenteroftile
                                                  -> do --Update pinky's state.
                                                        let pinkyastar = runAStarPinky gd
                                                        --Update pinky's movement.
                                                        updatePinkyMovement pinkyastar
                                                  | otherwise
                                                  -> --Update pinky's movement.
                                                     updatePinkyMovement (pinkystate gd)
                                         | otherwise
                                         -> pinkystate gd
                  , inkystate       = if | (inkycurrentmode (inkystate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that inky occupies.
                                               let inkycurrentcc = ghostCoorToCookieCoor $
                                                                   inkycurrentposition (inkystate gd)
                                               let inkyincenteroftile = case Seq.viewl (Seq.filter (\x -> inkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                          Seq.EmptyL   -> False
                                                                          (_ Seq.:< _) -> True
                                               if | inkyincenteroftile
                                                  -> do --Update inky's state.
                                                        let inkyastar  = runAStarInky gd
                                                        --Update pinky's and inky's movement.
                                                        updateInkyMovement inkyastar 
                                                  | otherwise
                                                  -> --Update inky's movement.
                                                     updateInkyMovement (inkystate gd)
                                         | otherwise
                                         -> inkystate gd
                  , clydestate      = if | (clydecurrentmode (clydestate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that clyde occupies.
                                               let clydecurrentcc = ghostCoorToCookieCoor $
                                                                    clydecurrentposition (clydestate gd)
                                               let clydeincenteroftile = case Seq.viewl (Seq.filter (\x -> clydecurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                           Seq.EmptyL   -> False
                                                                           (_ Seq.:< _) -> True
                                               if | clydeincenteroftile
                                                  -> do --Update clyde's state.
                                                        let clydeastar  = runAStarClyde gd
                                                        --Update clyde's movement.
                                                        updateClydeMovement clydeastar 
                                                  | otherwise
                                                  -> --Update clyde's movement.
                                                     updateClydeMovement (clydestate gd)
                                         | otherwise
                                         -> clydestate gd
                  , doteatentimer   = doteatentimer gd
                  , staticmapassets = staticmapassets gd
                  , lastkeypressed  = Just 's'
                  }
handleKeys cevent@(EventKey    (Char 'a') GGIIG.Down _ _)      gd =
  return GameData { gamestate       = InProgress
                  , tilestate       = do --Get current tile state.
                                         let tilecurrentstate = tilestate gd
                                         --Get current pacman state.
                                         let pacmancurrentstate = pacmanstate gd
                                         --Get the current tile center coordinates that pacman occupies.
                                         let pacmancurrentcc = pacmanCoorToCookieCoor $
                                                               pacmancurrentposition pacmancurrentstate
                                         let pacmanincenteroftile = case Seq.viewl (Seq.filter (\x -> pacmancurrentcc == (centercoordinates $ cookiedata x)) tilecurrentstate) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         let pacmanintilethatcontainscookie = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                                Seq.EmptyL   -> False
                                                                                (x Seq.:< _) -> isJust $ cookietype $ cookiedata x
                                         --Run through positional possibilities for Pacman.
                                         if | --Pacman is in the center of a tile AND the tile contains a cookie.
                                              pacmanincenteroftile &&
                                              pacmanintilethatcontainscookie
                                            -> do --Get tile to be updated since pacman just ate a cookie.
                                                  let tiletobeupdated = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                          Seq.EmptyL   -> defaulttile
                                                                          (x Seq.:< _) -> x
                                                  --Update tilestate to reflect the change in the tile (cookie was eaten).
                                                  updateGameDataTile tiletobeupdated
                                                                     tilecurrentstate
                                            | otherwise
                                            -> tilestate gd
                  , currentlevel    = currentlevel gd
                  , currentscore    = currentscore gd
                  , pacmanstate     = do --Get current tile state.
                                         let tilecurrentstate = tilestate gd
                                         --Get current pacman state.
                                         let pacmancurrentstate = pacmanstate gd
                                         --Get the current tile center coordinates that pacman occupies.
                                         let pacmancurrentcc = pacmanCoorToCookieCoor $
                                                               pacmancurrentposition pacmancurrentstate
                                         let pacmanincenteroftile = case Seq.viewl (Seq.filter (\x -> pacmancurrentcc == (centercoordinates $ cookiedata x)) tilecurrentstate) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         let pacmanintilethatcontainscookie = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                                Seq.EmptyL   -> False
                                                                                (x Seq.:< _) -> isJust $ cookietype $ cookiedata x
                                         --Run through positional possibilities for Pacman.
                                         if | --Pacman is in the center of a tile AND the tile contains a cookie.
                                              pacmanincenteroftile &&
                                              pacmanintilethatcontainscookie
                                            -> do --Update Pacman's position after moving up.
                                                  let updatedpacmanstatef = updatePacmanMovement cevent 
                                                                                                 pacmancurrentstate
                                                  --Update Pacman's current tile after moving up.
                                                  updatePacmanTile tilecurrentstate
                                                                   updatedpacmanstatef 
                                            | --Pacman is now in the center of a tile AND the tile DOESNT contain a cookie.
                                              pacmanincenteroftile &&
                                              (not pacmanintilethatcontainscookie)
                                            -> do --Update Pacman's position after moving up.
                                                  let updatedpacmanstatef = updatePacmanMovement cevent 
                                                                                                 pacmancurrentstate
                                                  --Update Pacman's current tile after moving up.
                                                  updatePacmanTile tilecurrentstate
                                                                   updatedpacmanstatef
                                            | --Pacman is not in the center of a tile.
                                              otherwise
                                            -> --Update Pacman's position after moving up.
                                               updatePacmanMovement cevent
                                                                    pacmancurrentstate
                  , blinkystate     = do --Get the current tile center coordinates that blinky occupies.
                                         let blinkycurrentcc = ghostCoorToCookieCoor $
                                                               blinkycurrentposition (blinkystate gd)
                                         let blinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> blinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         if | blinkyincenteroftile
                                            -> do --Update blinky's state.
                                                  let blinkyastar   = runAStarBlinky gd
                                                  --Update blinky's movement.
                                                  updateBlinkyMovement blinkyastar
                                            | otherwise
                                            -> --Update blinky's state.
                                               updateBlinkyMovement (blinkystate gd)
                  , pinkystate      = if | (pinkycurrentmode (pinkystate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that pinky occupies.
                                               let pinkycurrentcc = ghostCoorToCookieCoor $
                                                                    pinkycurrentposition (pinkystate gd)
                                               let pinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> pinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                           Seq.EmptyL   -> False
                                                                           (_ Seq.:< _) -> True
                                               if | pinkyincenteroftile
                                                  -> do --Update pinky's state.
                                                        let pinkyastar = runAStarPinky gd
                                                        --Update pinky's movement.
                                                        updatePinkyMovement pinkyastar
                                                  | otherwise
                                                  -> --Update pinky's movement.
                                                     updatePinkyMovement (pinkystate gd)
                                         | otherwise
                                         -> pinkystate gd
                  , inkystate       = if | (inkycurrentmode (inkystate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that inky occupies.
                                               let inkycurrentcc = ghostCoorToCookieCoor $
                                                                   inkycurrentposition (inkystate gd)
                                               let inkyincenteroftile = case Seq.viewl (Seq.filter (\x -> inkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                          Seq.EmptyL   -> False
                                                                          (_ Seq.:< _) -> True
                                               if | inkyincenteroftile
                                                  -> do --Update inky's state.
                                                        let inkyastar  = runAStarInky gd
                                                        --Update inky's movement.
                                                        updateInkyMovement inkyastar 
                                                  | otherwise
                                                  -> --Update inky's movement.
                                                     updateInkyMovement (inkystate gd)
                                         | otherwise
                                         -> inkystate gd
                  , clydestate      = if | (clydecurrentmode (clydestate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that clyde occupies.
                                               let clydecurrentcc = ghostCoorToCookieCoor $
                                                                    clydecurrentposition (clydestate gd)
                                               let clydeincenteroftile = case Seq.viewl (Seq.filter (\x -> clydecurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                           Seq.EmptyL   -> False
                                                                           (_ Seq.:< _) -> True
                                               if | clydeincenteroftile
                                                  -> do --Update clyde's state.
                                                        let clydeastar  = runAStarClyde gd
                                                        --Update clyde's movement.
                                                        updateClydeMovement clydeastar 
                                                  | otherwise
                                                  -> --Update clyde's movement.
                                                     updateClydeMovement (clydestate gd)
                                         | otherwise
                                         -> clydestate gd
                  , doteatentimer   = doteatentimer gd
                  , staticmapassets = staticmapassets gd
                  , lastkeypressed  = Just 'a'
                  }
handleKeys cevent@(EventKey    (Char 'd') GGIIG.Down _ _)      gd =
  return GameData { gamestate       = InProgress
                  , tilestate       = do --Get current tile state.
                                         let tilecurrentstate = tilestate gd
                                         --Get current pacman state.
                                         let pacmancurrentstate = pacmanstate gd
                                         --Get the current tile center coordinates that pacman occupies.
                                         let pacmancurrentcc = pacmanCoorToCookieCoor $
                                                               pacmancurrentposition pacmancurrentstate
                                         let pacmanincenteroftile = case Seq.viewl (Seq.filter (\x -> pacmancurrentcc == (centercoordinates $ cookiedata x)) tilecurrentstate) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         let pacmanintilethatcontainscookie = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                                Seq.EmptyL   -> False
                                                                                (x Seq.:< _) -> isJust $ cookietype $ cookiedata x
                                         --Run through positional possibilities for Pacman.
                                         if | --Pacman is in the center of a tile AND the tile contains a cookie.
                                              pacmanincenteroftile &&
                                              pacmanintilethatcontainscookie
                                            -> do --Get tile to be updated since pacman just ate a cookie.
                                                  let tiletobeupdated = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                          Seq.EmptyL   -> defaulttile
                                                                          (x Seq.:< _) -> x
                                                  --Update tilestate to reflect the change in the tile (cookie was eaten).
                                                  updateGameDataTile tiletobeupdated
                                                                     tilecurrentstate
                                            | otherwise
                                            -> tilestate gd
                  , currentlevel    = currentlevel gd
                  , currentscore    = currentscore gd
                  , pacmanstate     = do --Get current tile state.
                                         let tilecurrentstate = tilestate gd
                                         --Get current pacman state.
                                         let pacmancurrentstate = pacmanstate gd
                                         --Get the current tile center coordinates that pacman occupies.
                                         let pacmancurrentcc = pacmanCoorToCookieCoor $
                                                               pacmancurrentposition pacmancurrentstate
                                         let pacmanincenteroftile = case Seq.viewl (Seq.filter (\x -> pacmancurrentcc == (centercoordinates $ cookiedata x)) tilecurrentstate) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         let pacmanintilethatcontainscookie = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                                Seq.EmptyL   -> False
                                                                                (x Seq.:< _) -> isJust $ cookietype $ cookiedata x
                                         --Run through positional possibilities for Pacman.
                                         if | --Pacman is in the center of a tile AND the tile contains a cookie.
                                              pacmanincenteroftile &&
                                              pacmanintilethatcontainscookie
                                            -> do --Update Pacman's position after moving up.
                                                  let updatedpacmanstatef = updatePacmanMovement cevent 
                                                                                                 pacmancurrentstate
                                                  --Update Pacman's current tile after moving up.
                                                  updatePacmanTile tilecurrentstate
                                                                   updatedpacmanstatef 
                                            | --Pacman is now in the center of a tile AND the tile DOESNT contain a cookie.
                                              pacmanincenteroftile &&
                                              (not pacmanintilethatcontainscookie)
                                            -> do --Update Pacman's position after moving up.
                                                  let updatedpacmanstatef = updatePacmanMovement cevent 
                                                                                                 pacmancurrentstate
                                                  --Update Pacman's current tile after moving up.
                                                  updatePacmanTile tilecurrentstate
                                                                   updatedpacmanstatef
                                            | --Pacman is not in the center of a tile.
                                              otherwise
                                            -> --Update Pacman's position after moving up.
                                               updatePacmanMovement cevent
                                                                    pacmancurrentstate
                  , blinkystate     = do --Get the current tile center coordinates that blinky occupies.
                                         let blinkycurrentcc = ghostCoorToCookieCoor $
                                                               blinkycurrentposition (blinkystate gd)
                                         let blinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> blinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         if | blinkyincenteroftile
                                            -> do --Update blinky's state.
                                                  let blinkyastar   = runAStarBlinky gd
                                                  --Update blinky's movement.
                                                  updateBlinkyMovement blinkyastar
                                            | otherwise
                                            -> --Update blinky's state.
                                               updateBlinkyMovement (blinkystate gd)
                  , pinkystate      = if | (pinkycurrentmode (pinkystate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that pinky occupies.
                                               let pinkycurrentcc = ghostCoorToCookieCoor $
                                                                    pinkycurrentposition (pinkystate gd)
                                               let pinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> pinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                           Seq.EmptyL   -> False
                                                                           (_ Seq.:< _) -> True
                                               if | pinkyincenteroftile
                                                  -> do --Update pinky's state.
                                                        let pinkyastar = runAStarPinky gd
                                                        --Update pinky's movement.
                                                        updatePinkyMovement pinkyastar
                                                  | otherwise
                                                  -> --Update pinky's movement.
                                                     updatePinkyMovement (pinkystate gd)
                                         | otherwise
                                         -> pinkystate gd
                  , inkystate       = if | (inkycurrentmode (inkystate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that inky occupies.
                                               let inkycurrentcc = ghostCoorToCookieCoor $
                                                                   inkycurrentposition (inkystate gd)
                                               let inkyincenteroftile = case Seq.viewl (Seq.filter (\x -> inkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                          Seq.EmptyL   -> False
                                                                          (_ Seq.:< _) -> True
                                               if | inkyincenteroftile
                                                  -> do --Update inky's state.
                                                        let inkyastar  = runAStarInky gd
                                                        --Update inky's movement.
                                                        updateInkyMovement inkyastar 
                                                  | otherwise
                                                  -> --Update inky's movement.
                                                     updateInkyMovement (inkystate gd)
                                         | otherwise
                                         -> inkystate gd
                  , clydestate      = if | (clydecurrentmode (clydestate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that clyde occupies.
                                               let clydecurrentcc = ghostCoorToCookieCoor $
                                                                    clydecurrentposition (clydestate gd)
                                               let clydeincenteroftile = case Seq.viewl (Seq.filter (\x -> clydecurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                           Seq.EmptyL   -> False
                                                                           (_ Seq.:< _) -> True
                                               if | clydeincenteroftile
                                                  -> do --Update clyde's state.
                                                        let clydeastar  = runAStarClyde gd
                                                        --Update clyde's movement.
                                                        updateClydeMovement clydeastar 
                                                  | otherwise
                                                  -> --Update clyde's movement.
                                                     updateClydeMovement (clydestate gd)
                                         | otherwise
                                         -> clydestate gd
                  , doteatentimer   = doteatentimer gd
                  , staticmapassets = staticmapassets gd
                  , lastkeypressed  = Just 'd'
                  }
handleKeys cevent@(EventKey    _          GGIIG.Up _ _)         gd =
  return GameData { gamestate       = InProgress
                  , tilestate       = do --Get current tile state.
                                         let tilecurrentstate = tilestate gd
                                         --Get current pacman state.
                                         let pacmancurrentstate = pacmanstate gd
                                         --Get the current tile center coordinates that pacman occupies.
                                         let pacmancurrentcc = pacmanCoorToCookieCoor $
                                                               pacmancurrentposition pacmancurrentstate
                                         let pacmanincenteroftile = case Seq.viewl (Seq.filter (\x -> pacmancurrentcc == (centercoordinates $ cookiedata x)) tilecurrentstate) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         let pacmanintilethatcontainscookie = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                                Seq.EmptyL   -> False
                                                                                (x Seq.:< _) -> isJust $ cookietype $ cookiedata x
                                         --Run through positional possibilities for Pacman.
                                         if | --Pacman is in the center of a tile AND the tile contains a cookie.
                                              pacmanincenteroftile &&
                                              pacmanintilethatcontainscookie
                                            -> do --Get tile to be updated since pacman just ate a cookie.
                                                  let tiletobeupdated = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                          Seq.EmptyL   -> defaulttile
                                                                          (x Seq.:< _) -> x
                                                  --Update tilestate to reflect the change in the tile (cookie was eaten).
                                                  updateGameDataTile tiletobeupdated
                                                                     tilecurrentstate
                                            | otherwise
                                            -> tilestate gd
                  , currentlevel    = currentlevel gd
                  , currentscore    = currentscore gd
                  , pacmanstate     = do --Get current tile state.
                                         let tilecurrentstate = tilestate gd
                                         --Get current pacman state.
                                         let pacmancurrentstate = pacmanstate gd
                                         --Get the current tile center coordinates that pacman occupies.
                                         let pacmancurrentcc = pacmanCoorToCookieCoor $
                                                               pacmancurrentposition pacmancurrentstate
                                         let pacmanincenteroftile = case Seq.viewl (Seq.filter (\x -> pacmancurrentcc == (centercoordinates $ cookiedata x)) tilecurrentstate) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         let pacmanintilethatcontainscookie = case Seq.viewl (Seq.filter (\x -> (tilenumber $ pacmancurrenttile pacmancurrentstate) == (tilenumber x)) tilecurrentstate) of
                                                                                Seq.EmptyL   -> False
                                                                                (x Seq.:< _) -> isJust $ cookietype $ cookiedata x
                                         --Run through positional possibilities for Pacman.
                                         if | --Pacman is in the center of a tile AND the tile contains a cookie.
                                              pacmanincenteroftile &&
                                              pacmanintilethatcontainscookie
                                            -> do --Update Pacman's position after moving up.
                                                  let updatedpacmanstatef = updatePacmanMovementNoInput pacmancurrentstate
                                                  --Update Pacman's current tile after moving up.
                                                  updatePacmanTile tilecurrentstate
                                                                   updatedpacmanstatef 
                                            | --Pacman is now in the center of a tile AND the tile DOESNT contain a cookie.
                                              pacmanincenteroftile &&
                                              (not pacmanintilethatcontainscookie)
                                            -> do --Update Pacman's position after moving up.
                                                  let updatedpacmanstatef = updatePacmanMovementNoInput pacmancurrentstate
                                                  --Update Pacman's current tile after moving up.
                                                  updatePacmanTile tilecurrentstate
                                                                   updatedpacmanstatef
                                            | --Pacman is not in the center of a tile.
                                              otherwise
                                            -> --Update Pacman's position after moving up.
                                               updatePacmanMovementNoInput pacmancurrentstate
                  , blinkystate     = do --Get the current tile center coordinates that blinky occupies.
                                         let blinkycurrentcc = ghostCoorToCookieCoor $
                                                               blinkycurrentposition (blinkystate gd)
                                         let blinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> blinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                      Seq.EmptyL   -> False
                                                                      (_ Seq.:< _) -> True
                                         if | blinkyincenteroftile
                                            -> do --Update blinky's state.
                                                  let blinkyastar   = runAStarBlinky gd
                                                  --Update blinky's movement.
                                                  updateBlinkyMovement blinkyastar
                                            | otherwise
                                            -> --Update blinky's state.
                                               updateBlinkyMovement (blinkystate gd)
                  , pinkystate      = if | (pinkycurrentmode (pinkystate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that pinky occupies.
                                               let pinkycurrentcc = ghostCoorToCookieCoor $
                                                                    pinkycurrentposition (pinkystate gd)
                                               let pinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> pinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                           Seq.EmptyL   -> False
                                                                           (_ Seq.:< _) -> True
                                               if | pinkyincenteroftile
                                                  -> do --Update pinky's state.
                                                        let pinkyastar = runAStarPinky gd
                                                        --Update pinky's movement.
                                                        updatePinkyMovement pinkyastar
                                                  | otherwise
                                                  -> --Update pinky's movement.
                                                     updatePinkyMovement (pinkystate gd)
                                         | otherwise
                                         -> pinkystate gd
                  , inkystate       = if | (inkycurrentmode (inkystate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that inky occupies.
                                               let inkycurrentcc = ghostCoorToCookieCoor $
                                                                   inkycurrentposition (inkystate gd)
                                               let inkyincenteroftile = case Seq.viewl (Seq.filter (\x -> inkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                          Seq.EmptyL   -> False
                                                                          (_ Seq.:< _) -> True
                                               if | inkyincenteroftile
                                                  -> do --Update inky's state.
                                                        let inkyastar  = runAStarInky gd
                                                        --Update inky's movement.
                                                        updateInkyMovement inkyastar 
                                                  | otherwise
                                                  -> --Update inky's movement.
                                                     updateInkyMovement (inkystate gd)
                                         | otherwise
                                         -> inkystate gd
                  , clydestate      = if | (clydecurrentmode (clydestate gd)) /= GhostHouseStart
                                         -> do --Get the current tile center coordinates that clyde occupies.
                                               let clydecurrentcc = ghostCoorToCookieCoor $
                                                                    clydecurrentposition (clydestate gd)
                                               let clydeincenteroftile = case Seq.viewl (Seq.filter (\x -> clydecurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                                                                           Seq.EmptyL   -> False
                                                                           (_ Seq.:< _) -> True
                                               if | clydeincenteroftile
                                                  -> do --Update clyde's state.
                                                        let clydeastar  = runAStarClyde gd
                                                        --Update clyde's movement.
                                                        updateClydeMovement clydeastar 
                                                  | otherwise
                                                  -> --Update clyde's movement.
                                                     updateClydeMovement (clydestate gd)
                                         | otherwise
                                         -> clydestate gd
                  , doteatentimer   = doteatentimer gd
                  , staticmapassets = staticmapassets gd
                  , lastkeypressed  = lastkeypressed gd
                  }
handleKeys        (EventKey    _          GGIIG.Down _ _)       gd = return gd

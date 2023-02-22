module Game.Initial.Level5_All where

import Game.Types
import Graphics.Map.Static.Tiles.Definition
import Graphics.Map.Static.Tiles.Default
import Graphics.Map.Static.Tiles.AllTileData
import Game.Initial.Definition

import Control.Monad.STM as CMSTM
import Control.Concurrent.STM.TVar as TVar
import Data.Sequence as Seq (empty,filter,viewl,ViewL(..))


initialgamestatelevel5_all :: Level
                           -> IO GameData
initialgamestatelevel5_all levelnumber = do
  gamedatagamestate <- CMSTM.atomically $ newTVar Start
  gamedatacurrentlevel <- CMSTM.atomically $ newTVar levelnumber
  gamedatacurrentscore <- CMSTM.atomically $ newTVar 0
  gamedatapacmanstate <- CMSTM.atomically $
                         newTVar          $
                         PacmanState { pacmancurrentposition  = (557,378)
                                     , pacmancurrenttile       = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 299) alltiledatainit) of
                                                                   Seq.EmptyL   -> defaulttile 
                                                                   (x Seq.:< _) -> x
                                     , pacmancurrentdirection = None
                                     , pacmancurrentstate     = Normal
                                     , pacmancurrentspeed     = 100
                                     , pacmancurrentlives     = 3
                                     }
  gamedatablinkystate <- CMSTM.atomically $
                         newTVar          $
                         BlinkyState { blinkycurrentmode      = Chase
                                     , blinkycurrentposition  = (557,858)
                                     , blinkycurrenttile      = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 256) alltiledatainit) of
                                                                  Seq.EmptyL   -> defaulttile
                                                                  (x Seq.:< _) -> x
                                     , blinkytargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 299) alltiledatainit) of
                                                                  Seq.EmptyL   -> defaulttile 
                                                                  (x Seq.:< _) -> x
                                     , blinkytargettileseq    = Seq.empty
                                     , blinkycurrentdirection = Game.Types.Right
                                     , blinkycurrentspeed     = 95
                                     , blinkydotcounter       = 0
                                     }
  gamedatapinkystate <- CMSTM.atomically $
                        newTVar          $
                        PinkyState { pinkycurrentmode      = GhostHouseStart
                                   , pinkycurrentposition  = (557,738) 
                                   , pinkycurrenttile      = Nothing 
                                   , pinkytargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 299) alltiledatainit) of
                                                               Seq.EmptyL   -> defaulttile 
                                                               (x Seq.:< _) -> x
                                   , pinkytargettileseq    = Seq.empty
                                   , pinkycurrentdirection = Down
                                   , pinkycurrentspeed     = 95
                                   , pinkydotcounter       = 0
                                   }
  gamedatainkystate <- CMSTM.atomically $
                       newTVar          $
                       InkyState { inkycurrentmode      = GhostHouseStart
                                 , inkycurrentposition  = (487,738)
                                 , inkycurrenttile      = Nothing
                                 , inkytargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 299) alltiledatainit) of
                                                            Seq.EmptyL   -> defaulttile 
                                                            (x Seq.:< _) -> x
                                 , inkytargettileseq    = Seq.empty
                                 , inkycurrentdirection = Up
                                 , inkycurrentspeed     = 95
                                 , inkydotcounter       = 0
                                 }
  gamedataclydestate <- CMSTM.atomically $
                        newTVar          $
                        ClydeState { clydecurrentmode      = GhostHouseStart
                                   , clydecurrentposition  = (627,738) 
                                   , clydecurrenttile      = Nothing
                                   , clydetargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 299) alltiledatainit) of
                                                               Seq.EmptyL   -> defaulttile
                                                               (x Seq.:< _) -> x
                                   , clydetargettileseq    = Seq.empty
                                   , clydecurrentdirection = Up
                                   , clydecurrentspeed     = 95
                                   , clydedotcounter       = 0
                                   }
  gamedatadoteatentimer <- CMSTM.atomically $ newTVar 0
  return GameData { gamestate     = gamedatagamestate 
                  , currentlevel  = gamedatacurrentlevel
                  , currentscore  = gamedatacurrentscore
                  , pacmanstate   = gamedatapacmanstate
                  , blinkystate   = gamedatablinkystate
                  , pinkystate    = gamedatapinkystate
                  , inkystate     = gamedatainkystate
                  , clydestate    = gamedataclydestate
                  , doteatentimer = gamedatadoteatentimer
                  }

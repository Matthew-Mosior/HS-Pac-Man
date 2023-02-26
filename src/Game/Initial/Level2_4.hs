module Game.Initial.Level2_4 where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Ghosts.Algo.AStar.Tiles.AllTileDataAStar
import Graphics.Map.Static.Tiles.Definition
import Graphics.Map.Static.Tiles.Default
import Graphics.Map.Static.Tiles.AllTileData
import Game.Initial.Definition

import Control.Monad.STM as CMSTM
import Control.Concurrent.STM.TVar as TVar
import Data.Sequence as Seq (empty,filter,viewl,ViewL(..))


initialgamestatelevel2_4 :: Level
                         -> IO GameData
initialgamestatelevel2_4 levelnumber = do
  gamedatagamestate <- CMSTM.atomically $ newTVar Start
  gamedatacurrentlevel <- CMSTM.atomically $ newTVar levelnumber
  gamedatacurrentscore <- CMSTM.atomically $ newTVar 0
  gamedatapacmanstate <- CMSTM.atomically $
                         newTVar          $
                         PacmanState { pacmancurrentposition  = (557,378)
                                     , pacmancurrenttile      = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 299) alltiledatainit) of
                                                                  Seq.EmptyL   -> defaulttile 
                                                                  (x Seq.:< _) -> x
                                     , pacmancurrentdirection = None
                                     , pacmancurrentstate     = Normal
                                     , pacmancurrentdrawstate = PacmanRegularDraw
                                     , pacmancurrentspeed     = 90
                                     , pacmancurrentlives     = 3
                                     }
  gamedatablinkystate <- CMSTM.atomically $
                         newTVar          $
                         BlinkyState { blinkycurrentmode      = Chase
                                     , blinkycurrentdrawstate = GhostRegularDraw
                                     , blinkycurrentposition  = (557,858)
                                     , blinkycurrenttile      = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 256) alltiledataastarinit) of
                                                                  Seq.EmptyL   -> defaulttileastar
                                                                  (x Seq.:< _) -> x
                                     , blinkytargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 299) alltiledataastarinit) of
                                                                  Seq.EmptyL   -> defaulttileastar 
                                                                  (x Seq.:< _) -> x
                                     , blinkytargettileseq    = Seq.empty
                                     , blinkycurrentdirection = Game.Types.Right
                                     , blinkycurrentspeed     = 85
                                     , blinkydotcounter       = 0
                                     }
  gamedatapinkystate <- CMSTM.atomically $
                        newTVar          $
                        PinkyState { pinkycurrentmode      = GhostHouseStart
                                   , pinkycurrentdrawstate = GhostRegularDraw
                                   , pinkycurrentposition  = (557,738) 
                                   , pinkycurrenttile      = Nothing 
                                   , pinkytargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 299) alltiledataastarinit) of
                                                               Seq.EmptyL   -> defaulttileastar  
                                                               (x Seq.:< _) -> x
                                   , pinkytargettileseq    = Seq.empty
                                   , pinkycurrentdirection = Down
                                   , pinkycurrentspeed     = 85
                                   , pinkydotcounter       = 0
                                   }
  gamedatainkystate <- CMSTM.atomically $
                       newTVar          $
                       InkyState { inkycurrentmode      = GhostHouseStart
                                 , inkycurrentdrawstate = GhostRegularDraw
                                 , inkycurrentposition  = (487,738)
                                 , inkycurrenttile      = Nothing
                                 , inkytargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 299) alltiledataastarinit) of
                                                            Seq.EmptyL   -> defaulttileastar
                                                            (x Seq.:< _) -> x
                                 , inkytargettileseq    = Seq.empty
                                 , inkycurrentdirection = Up
                                 , inkycurrentspeed     = 85
                                 , inkydotcounter       = 0
                                 }
  gamedataclydestate <- CMSTM.atomically $
                        newTVar          $
                        ClydeState { clydecurrentmode      = GhostHouseStart
                                   , clydecurrentdrawstate = GhostRegularDraw
                                   , clydecurrentposition  = (627,738) 
                                   , clydecurrenttile      = Nothing
                                   , clydetargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 299) alltiledataastarinit) of
                                                               Seq.EmptyL   -> defaulttileastar
                                                               (x Seq.:< _) -> x
                                   , clydetargettileseq    = Seq.empty
                                   , clydecurrentdirection = Up
                                   , clydecurrentspeed     = 85
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

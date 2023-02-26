module Game.Initial.Level1 where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Ghosts.Algo.AStar.Tiles.AllTileDataAStar
import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Default
import Graphics.Map.Static.Tiles.Definition
import Game.Initial.Definition

import Control.Monad.STM as CMSTM
import Control.Concurrent.STM.TVar as TVar
import Data.Sequence as Seq (empty,filter,viewl,ViewL(..))


initialgamestatelevel1 :: Level
                       -> IO GameData
initialgamestatelevel1 levelnumber = do
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
                                    , pacmancurrentspeed     = 80
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
                                     , blinkycurrentspeed     = 75
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
                                   , pinkycurrentspeed     = 75
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
                                 , inkycurrentspeed     = 75
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
                                   , clydecurrentspeed     = 75
                                   , clydedotcounter       = 0
                                   }
  gamedatadoteatencounter <- CMSTM.atomically $
                             newTVar 0
  return GameData { gamestate     = gamedatagamestate
                  , currentlevel  = gamedatacurrentlevel
                  , currentscore  = gamedatacurrentscore
                  , pacmanstate   = gamedatapacmanstate
                  , blinkystate   = gamedatablinkystate
                  , pinkystate    = gamedatapinkystate
                  , inkystate     = gamedatainkystate
                  , clydestate    = gamedataclydestate
                  , doteatentimer = gamedatadoteatencounter
                  }

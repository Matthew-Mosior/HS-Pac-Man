module Game.Initial.Level1 where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Ghosts.Algo.AStar.Tiles.AllTileDataAStar
import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Default
import Graphics.Map.Static.Tiles.Definition
import Rendering.GhostHouse.StartingLoop.Definition

import Data.IORef
import Data.Sequence as Seq (empty,filter,viewl,ViewL(..))


initialgamestatelevel1 :: IO GameData
initialgamestatelevel1 = do
  gamedatagamestate        <- newIORef Start
  gamedatatilestate        <- newIORef alltiledatainit
  gamedatacurrentlevel     <- newIORef 1
  gamedatacurrentscore     <- newIORef 0
  gamedatapacmanstate      <- newIORef $
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
  gamedatablinkystate      <- newIORef $
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
  gamedatapinkystate       <- newIORef $
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
                                         , pinkyghsl             = Just $
                                                                   GHSLData { ghslnumber            = [309,310]
                                                                            , ghslmovementdirection = GHDown
                                                                            , ghslup                = Just [303,304]
                                                                            , ghsldown              = Just [315,316]
                                                                            }
                                         }
  gamedatainkystate        <- newIORef $
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
                                        , inkyghsl             = Just $
                                                                 GHSLData { ghslnumber            = [311,312]
                                                                          , ghslmovementdirection = GHUp
                                                                          , ghslup                = Just [301,302]
                                                                          , ghsldown              = Just [313,314]
                                                                          }
                                        }
  gamedataclydestate       <- newIORef $
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
                                         , clydeghsl             = Just $
                                                                   GHSLData { ghslnumber            = [307,308]
                                                                            , ghslmovementdirection = GHUp
                                                                            , ghslup                = Just [305,306]
                                                                            , ghsldown              = Just [317,318]
                                                                            }
                                         }
  gamedatadoteatencounter  <- newIORef 0
  return GameData { gamestate     = gamedatagamestate
                  , tilestate     = gamedatatilestate
                  , currentlevel  = gamedatacurrentlevel
                  , currentscore  = gamedatacurrentscore
                  , pacmanstate   = gamedatapacmanstate
                  , blinkystate   = gamedatablinkystate
                  , pinkystate    = gamedatapinkystate
                  , inkystate     = gamedatainkystate
                  , clydestate    = gamedataclydestate
                  , doteatentimer = gamedatadoteatencounter
                  }

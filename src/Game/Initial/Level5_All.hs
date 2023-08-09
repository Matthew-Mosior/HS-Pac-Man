module Game.Initial.Level5_All where

import Game.Types
import Game.Ghosts.Algo.AStar.Run.Default.Blinky
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Ghosts.Algo.AStar.Tiles.AllTileDataAStar
import Graphics.Map.Static.Tiles.Definition
import Graphics.Map.Static.Borders.InnerOuterBorder
import Graphics.Map.Static.Borders.OuterOuterBorder
import Graphics.Map.Static.Walls.Wall1
import Graphics.Map.Static.Walls.Wall2
import Graphics.Map.Static.Walls.Wall3
import Graphics.Map.Static.Walls.Wall4
import Graphics.Map.Static.Walls.Wall5
import Graphics.Map.Static.Walls.Wall6
import Graphics.Map.Static.Walls.Wall7
import Graphics.Map.Static.Walls.Wall8
import Graphics.Map.Static.Walls.Wall9
import Graphics.Map.Static.Walls.Wall10
import Graphics.Map.Static.Walls.Wall11
import Graphics.Map.Static.Walls.Wall12
import Graphics.Map.Static.Walls.Wall13
import Graphics.Map.Static.Walls.Wall14
import Graphics.Map.Static.Walls.Wall15
import Graphics.Map.Static.Walls.Wall16
import Graphics.Map.Static.Walls.Wall17
import Graphics.Map.Static.Walls.Wall18
import Graphics.Map.Static.Walls.Wall19
import Graphics.Map.Static.GhostHouse.InnerGhostHouse
import Graphics.Map.Static.GhostHouse.OuterGhostHouse
import Graphics.Map.Static.GhostHouseGate.GhostHouseGate
import Graphics.Map.Static.Tiles.Default
import Graphics.Map.Static.Tiles.AllTileData
import Game.Initial.Definition
import Rendering.GhostHouse.StartingLoop.Definition

import Data.Sequence as Seq (empty,filter,viewl,ViewL(..),(><))


initialgamestatelevel5_all :: Level
                           -> IO GameData
initialgamestatelevel5_all levelnumber = do
  let gamedatagamestate        = Start
  let gamedatatilestate        = alltiledatainit
  let gamedatacurrentlevel     = levelnumber
  let gamedatacurrentscore     = 0
  let gamedatapacmanstate      = PacmanState { pacmancurrentposition  = (557,378)
                                             , pacmancurrenttile       = case Seq.viewl (Seq.filter (\x -> (tilenumber x) == 299) alltiledatainit) of
                                                                           Seq.EmptyL   -> defaulttile 
                                                                           (x Seq.:< _) -> x
                                             , pacmancurrentdirection = None
                                             , pacmancurrentstate     = Normal
                                             , pacmancurrentdrawstate = PacmanStartDraw
                                             , pacmancurrentspeed     = 100
                                             , pacmancurrentlives     = 3
                                             }
  --Run blinky initial astar search.
  let blinkyastar              = runAStarBlinkyDefault
  let gamedatablinkystate      = BlinkyState { blinkycurrentmode      = Chase
                                             , blinkycurrentdrawstate = GhostRegularDraw
                                             , blinkycurrentposition  = (557,858)
                                             , blinkycurrenttile      = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 256) alltiledataastarinit) of
                                                                          Seq.EmptyL   -> defaulttileastar
                                                                          (x Seq.:< _) -> x
                                             , blinkytargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 299) alltiledataastarinit) of
                                                                          Seq.EmptyL   -> defaulttileastar 
                                                                          (x Seq.:< _) -> x
                                             , blinkytargettileseq    = blinkytargettileseq blinkyastar
                                             , blinkycurrentdirection = Game.Types.Right
                                             , blinkycurrentspeed     = 95
                                             , blinkydotcounter       = 0
                                             }
  let gamedatapinkystate       = PinkyState { pinkycurrentmode      = GhostHouseStart
                                            , pinkycurrentdrawstate = GhostRegularDraw
                                            , pinkycurrentposition  = (557,738) 
                                            , pinkycurrenttile      = Nothing 
                                            , pinkytargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 299) alltiledataastarinit) of
                                                                        Seq.EmptyL   -> defaulttileastar 
                                                                        (x Seq.:< _) -> x
                                            , pinkytargettileseq    = Seq.empty
                                            , pinkycurrentdirection = Down
                                            , pinkycurrentspeed     = 95
                                            , pinkydotcounter       = 0
                                            , pinkyghsl             = Just $
                                                                      GHSLData { ghslnumber            = [309,310]
                                                                               , ghslmovementdirection = GHDown
                                                                               , ghslup                = Just [303,304]
                                                                               , ghsldown              = Just [315,316]
                                                                               }
                                            }
  let gamedatainkystate        = InkyState { inkycurrentmode      = GhostHouseStart
                                           , inkycurrentdrawstate = GhostRegularDraw
                                           , inkycurrentposition  = (487,738)
                                           , inkycurrenttile      = Nothing
                                           , inkytargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 299) alltiledataastarinit) of
                                                                      Seq.EmptyL   -> defaulttileastar 
                                                                      (x Seq.:< _) -> x
                                           , inkytargettileseq    = Seq.empty
                                           , inkycurrentdirection = Up
                                           , inkycurrentspeed     = 95
                                           , inkydotcounter       = 0
                                           , inkyghsl             = Just $
                                                                    GHSLData { ghslnumber            = [311,312]
                                                                             , ghslmovementdirection = GHUp
                                                                             , ghslup                = Just [301,302]
                                                                             , ghsldown              = Just [313,314]
                                                                             }
                                           }
  let gamedataclydestate       = ClydeState { clydecurrentmode      = GhostHouseStart
                                            , clydecurrentdrawstate = GhostRegularDraw
                                            , clydecurrentposition  = (627,738) 
                                            , clydecurrenttile      = Nothing
                                            , clydetargettile       = case Seq.viewl (Seq.filter (\x -> (tilenumberastar x) == 299) alltiledataastarinit) of
                                                                        Seq.EmptyL   -> defaulttileastar
                                                                        (x Seq.:< _) -> x
                                            , clydetargettileseq    = Seq.empty
                                            , clydecurrentdirection = Up
                                            , clydecurrentspeed     = 95
                                            , clydedotcounter       = 0
                                            , clydeghsl             = Just $
                                                                      GHSLData { ghslnumber            = [307,308]
                                                                               , ghslmovementdirection = GHUp
                                                                               , ghslup                = Just [305,306]
                                                                               , ghsldown              = Just [317,318]
                                                                               }
                                            }
  let gamedatadoteatentimer    = 0
  createinnerouterborder       <- innerouterborder
  createouterouterborder       <- outerouterborder
  createwall1                  <- wall1
  createwall2                  <- wall2
  createwall3                  <- wall3
  createwall4                  <- wall4
  createwall5                  <- wall5
  createwall6                  <- wall6
  createwall7                  <- wall7
  createwall8                  <- wall8
  createwall9                  <- wall9
  createwall10                 <- wall10
  createwall11                 <- wall11
  createwall12                 <- wall12
  createwall13                 <- wall13
  createwall14                 <- wall14
  createwall15                 <- wall15
  createwall16                 <- wall16
  createwall17                 <- wall17
  createwall18                 <- wall18
  createwall19                 <- wall19
  createinnerghosthouse        <- innerghosthouse
  createouterghosthouse        <- outerghosthouse
  createghosthousegate         <- ghosthousegate
  let gamedatastaticmapassets  = createinnerouterborder
                                 ><
                                 createouterouterborder
                                 ><
                                 createwall1
                                 ><
                                 createwall2
                                 ><
                                 createwall3
                                 ><
                                 createwall4
                                 ><
                                 createwall5
                                 ><
                                 createwall6
                                 ><
                                 createwall7
                                 ><
                                 createwall8
                                 ><
                                 createwall9
                                 ><
                                 createwall10
                                 ><
                                 createwall11
                                 ><
                                 createwall12
                                 ><
                                 createwall13
                                 ><
                                 createwall14
                                 ><
                                 createwall15
                                 ><
                                 createwall16
                                 ><
                                 createwall17
                                 ><
                                 createwall18
                                 ><
                                 createwall19
                                 ><
                                 createinnerghosthouse
                                 ><
                                 createouterghosthouse
                                 ><
                                 createghosthousegate
  let gamedatalastkeypressed = Nothing
  return GameData { gamestate       = gamedatagamestate
                  , tilestate       = gamedatatilestate
                  , currentlevel    = gamedatacurrentlevel
                  , currentscore    = gamedatacurrentscore
                  , pacmanstate     = gamedatapacmanstate
                  , blinkystate     = gamedatablinkystate
                  , pinkystate      = gamedatapinkystate
                  , inkystate       = gamedatainkystate
                  , clydestate      = gamedataclydestate
                  , doteatentimer   = gamedatadoteatentimer
                  , staticmapassets = gamedatastaticmapassets
                  , lastkeypressed  = gamedatalastkeypressed
                  }

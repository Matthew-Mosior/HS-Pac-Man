module Game.Types where

import Game.Ghosts.Algo.AStar.Tiles.Definition
import Graphics.Map.Static.Tiles.Definition
import Rendering.GhostHouse.StartingLoop.Definition

import Data.Massiv.Array as DMA
import Data.Sequence (Seq(..),(><))
import Data.Time.Clock
import Graphics.Gloss.Interface.IO.Game (SpecialKey)
import Graphics.Gloss.Raster.Massiv.Internal
import GHC.Generics


data GameState = Start
               | InProgress
               | Win
               | Lose
  deriving (Show,Eq,Generic)

data Direction = None
               | Up
               | Down
               | Left
               | Right
  deriving (Show,Eq,Generic)

data PacmanMode = Normal
                | Energized
  deriving (Show,Eq,Generic)

data PacmanDrawState = PacmanRegularDraw
                     | PacmanAltDraw
                     | PacmanStartDraw
  deriving (Show,Eq,Generic)

data GhostMode = Scatter
               | Chase
               | GhostHouseStart
               | Frightened
               | Eaten
  deriving (Show,Eq,Generic)

data GhostDrawState = GhostRegularDraw
                    | GhostAltDraw
  deriving (Show,Eq,Generic) 

data PacmanState = PacmanState { pacmancurrentposition  :: (Int,Int)
                               , pacmancurrenttile      :: TileData 
                               , pacmancurrentdirection :: Direction
                               , pacmancurrentstate     :: PacmanMode
                               , pacmancurrentdrawstate :: PacmanDrawState
                               , pacmancurrentspeed     :: Int
                               , pacmancurrentlives     :: Int
                               }
  deriving (Show,Eq,Generic)

data BlinkyState = BlinkyState { blinkycurrentmode      :: GhostMode
                               , blinkycurrentdrawstate :: GhostDrawState
                               , blinkycurrentposition  :: (Int,Int)
                               , blinkycurrenttile      :: TileDataAStar
                               , blinkytargettile       :: TileDataAStar
                               , blinkytargettileseq    :: Seq TileDataAStar
                               , blinkycurrentdirection :: Direction
                               , blinkycurrentspeed     :: Int
                               , blinkydotcounter       :: Int
                               }
  deriving (Show,Eq,Generic)

data PinkyState = PinkyState { pinkycurrentmode      :: GhostMode
                             , pinkycurrentdrawstate :: GhostDrawState
                             , pinkycurrentposition  :: (Int,Int)
                             , pinkycurrenttile      :: Maybe TileDataAStar
                             , pinkytargettile       :: TileDataAStar
                             , pinkytargettileseq    :: Seq TileDataAStar
                             , pinkycurrentdirection :: Direction
                             , pinkycurrentspeed     :: Int
                             , pinkydotcounter       :: Int
                             , pinkyghsl             :: Maybe GHSLData
                             }
  deriving (Show,Eq,Generic)

data InkyState = InkyState { inkycurrentmode      :: GhostMode
                           , inkycurrentdrawstate :: GhostDrawState
                           , inkycurrentposition  :: (Int,Int)
                           , inkycurrenttile      :: Maybe TileDataAStar
                           , inkytargettile       :: TileDataAStar
                           , inkytargettileseq    :: Seq TileDataAStar
                           , inkycurrentdirection :: Direction
                           , inkycurrentspeed     :: Int
                           , inkydotcounter       :: Int
                           , inkyghsl             :: Maybe GHSLData
                           }
  deriving (Show,Eq,Generic)

data ClydeState = ClydeState { clydecurrentmode      :: GhostMode
                             , clydecurrentdrawstate :: GhostDrawState
                             , clydecurrentposition  :: (Int,Int)
                             , clydecurrenttile      :: Maybe TileDataAStar
                             , clydetargettile       :: TileDataAStar
                             , clydetargettileseq    :: Seq TileDataAStar
                             , clydecurrentdirection :: Direction
                             , clydecurrentspeed     :: Int
                             , clydedotcounter       :: Int
                             , clydeghsl             :: Maybe GHSLData
                             }
  deriving (Show,Eq,Generic)

data Ghosts = Blinky
            | Pinky
            | Inky
            | Clyde
  deriving (Show,Eq,Generic)

data GameData = GameData { gamestate       :: GameState
                         , tilestate       :: Seq TileData
                         , currentlevel    :: Int
                         , currentscore    :: Int
                         , pacmanstate     :: PacmanState
                         , blinkystate     :: BlinkyState
                         , pinkystate      :: PinkyState
                         , inkystate       :: InkyState
                         , clydestate      :: ClydeState
                         , doteatentimer   :: Double
                         , staticmapassets :: Seq (Array DMA.S Ix2 ColorMassiv,(Int,Int))
                         , lastkeypressed  :: Maybe Char
                         }
  deriving (Generic)

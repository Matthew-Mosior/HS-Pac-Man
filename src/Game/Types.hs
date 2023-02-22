module Game.Types where

import Graphics.Map.Static.Tiles.Definition

import Control.Concurrent.STM.TVar as TVar
import Data.Sequence (Seq(..))
import FRP.Yampa (DTime)
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

data GhostMode = Scatter
               | Chase
               | GhostHouseStart
               | Frightened
               | Disembodied
  deriving (Show,Eq,Generic)

data PacmanState = PacmanState { pacmancurrentposition  :: (Int,Int)
                               , pacmancurrenttile      :: TileData 
                               , pacmancurrentdirection :: Direction
                               , pacmancurrentstate     :: PacmanMode
                               , pacmancurrentspeed     :: Int
                               , pacmancurrentlives     :: Int
                               }
  deriving (Show,Eq,Generic)

data BlinkyState = BlinkyState { blinkycurrentmode      :: GhostMode
                               , blinkycurrentposition  :: (Int,Int)
                               , blinkycurrenttile      :: TileData
                               , blinkytargettile       :: TileData
                               , blinkytargettileseq    :: Seq TileData
                               , blinkycurrentdirection :: Direction
                               , blinkycurrentspeed     :: Int
                               , blinkydotcounter       :: Int
                               }
  deriving (Show,Eq,Generic)

data PinkyState = PinkyState { pinkycurrentmode      :: GhostMode
                             , pinkycurrentposition  :: (Int,Int)
                             , pinkycurrenttile      :: Maybe TileData
                             , pinkytargettile       :: TileData
                             , pinkytargettileseq    :: Seq TileData
                             , pinkycurrentdirection :: Direction
                             , pinkycurrentspeed     :: Int
                             , pinkydotcounter       :: Int
                             }
  deriving (Show,Eq,Generic)

data InkyState = InkyState { inkycurrentmode      :: GhostMode
                           , inkycurrentposition  :: (Int,Int)
                           , inkycurrenttile      :: Maybe TileData
                           , inkytargettile       :: TileData
                           , inkytargettileseq    :: Seq TileData
                           , inkycurrentdirection :: Direction
                           , inkycurrentspeed     :: Int
                           , inkydotcounter       :: Int
                           }
  deriving (Show,Eq,Generic)

data ClydeState = ClydeState { clydecurrentmode      :: GhostMode
                             , clydecurrentposition  :: (Int,Int)
                             , clydecurrenttile      :: Maybe TileData
                             , clydetargettile       :: TileData
                             , clydetargettileseq    :: Seq TileData
                             , clydecurrentdirection :: Direction
                             , clydecurrentspeed     :: Int
                             , clydedotcounter       :: Int
                             }
  deriving (Show,Eq,Generic)

data Ghosts = Blinky
            | Pinky
            | Inky
            | Clyde
  deriving (Show,Eq,Generic)

data GameData = GameData { gamestate       :: TVar GameState
                         , currentlevel    :: TVar Int
                         , currentscore    :: TVar Int 
                         , pacmanstate     :: TVar PacmanState
                         , blinkystate     :: TVar BlinkyState
                         , pinkystate      :: TVar PinkyState
                         , inkystate       :: TVar InkyState
                         , clydestate      :: TVar ClydeState
                         , doteatentimer   :: TVar DTime
                         }
  deriving (Eq,Generic)

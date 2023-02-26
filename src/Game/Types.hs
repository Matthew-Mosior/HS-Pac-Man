module Game.Types where

import Game.Ghosts.Algo.AStar.Tiles.Definition
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

data PacmanDrawState = PacmanRegularDraw
                     | PacmanAltDraw
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

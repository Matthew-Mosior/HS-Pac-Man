module Game.Ghosts.Algo.AStar.Definition where

import Game.Ghosts.Algo.AStar.Tiles.Definition

import Data.Map.Strict as DMS
import Data.PQueue.Min as DPQM
import GHC.Generics


data AStarData = AStarData { camefrom :: Map TileDataAStar TileDataAStar
                           , gscore   :: Map TileDataAStar Int
                           , openset  :: MinQueue TileDataAStar
                           }
  deriving (Generic)

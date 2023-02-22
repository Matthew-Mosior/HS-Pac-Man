module Game.Ghosts.Algo.AStar.Definition where

import Graphics.Map.Static.Tiles.Definition

import Data.Map.Strict as DMS
import Data.PQueue.Max as DPQM
import GHC.Generics

data AStarData = AStarData { camefrom :: Map TileData TileData
                           , gscore   :: Map TileData Int
                           , openset  :: MaxQueue TileData
                           }
  deriving (Generic)

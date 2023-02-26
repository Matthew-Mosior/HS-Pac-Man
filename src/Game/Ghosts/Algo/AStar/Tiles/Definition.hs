module Game.Ghosts.Algo.AStar.Tiles.Definition where

import Graphics.Map.Static.Tiles.Definition

import GHC.Generics


data TileDataAStar = TileDataAStar { tilenumberastar     :: Int
                                   , tilecoordinateastar :: [(Int,Int)] --top left, top right, bottom left, bottom right
                                   , tileoccupiedastar   :: Bool
                                   , cookiedataastar     :: CookieData
                                   , walldataastar       :: WallData
                                   , adjacenttoastar     :: [Int] --tiles this tile is directly adjacent to, defined by tilenumber.
                                   , fscoreastar         :: Int --the astar fscore for the tile.
                                   }
  deriving (Show,Eq,Generic)

instance Ord TileDataAStar where
  (TileDataAStar _ _ _ _ _ _ fscore1astar) `compare` (TileDataAStar _ _ _ _ _ _ fscore2astar) = fscore1astar `compare` fscore2astar

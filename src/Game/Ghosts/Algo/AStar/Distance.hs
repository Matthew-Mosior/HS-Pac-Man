module Game.Ghosts.Algo.AStar.Distance where

import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Definition

import Data.Sequence as Seq (sortBy)


hnDistance :: Seq TileData
           -> TileData
           -> TileData
           -> Int
hnDistance alltiles startt endt = do
  let relevanttiles = fmap (\x -> centercoordinates $ cookiedata x)
                      alltiles
  Seq.sortBy (\a b -> )
  relevanttiles

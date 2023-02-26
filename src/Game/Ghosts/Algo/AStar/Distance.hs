module Game.Ghosts.Algo.AStar.Distance where

import Game.Ghosts.Algo.AStar.Tiles.Definition
import Graphics.Map.Static.Tiles.Definition

manhattanDistance :: TileDataAStar
                  -> TileDataAStar
                  -> Int
manhattanDistance startt endt = do
  let starttx = (\(x,_) -> x)          $
                centercoordinates      $
                cookiedataastar startt
  let startty = (\(_,y) -> y)          $
                centercoordinates      $
                cookiedataastar startt
  let endtx   = (\(x,_) -> x)          $
                centercoordinates      $
                cookiedataastar endt
  let endty   = (\(_,y) -> y)          $
                centercoordinates      $
                cookiedataastar endt
  (abs $ (starttx) - (endtx)) + (abs $ (startty) - (endty))

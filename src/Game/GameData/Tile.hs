module Game.GameData.Tile where

import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Definition

import Data.Sequence as Seq (filter,findIndexL,update,viewl,Seq(..),ViewL(..))


updateGameDataTile :: TileData
                   -> Seq TileData
                   -> Seq TileData
updateGameDataTile tiletoupdate ts =
  case Seq.viewl (Seq.filter (\t -> (tilenumber tiletoupdate) == (tilenumber t)) ts) of
    Seq.EmptyL   -> alltiledatainit
    (x Seq.:< _) -> do let updateindex = case (Seq.findIndexL (\t -> (tilenumber tiletoupdate) == (tilenumber t)) ts) of
                                           Nothing -> (-1)
                                           Just i  -> i
                       let updatedtile = TileData { tilenumber     = tilenumber x
                                                  , tilecoordinate = tilecoordinate x
                                                  , tileoccupied   = tileoccupied x
                                                  , cookiedata     = CookieData { cookietype        = Nothing
                                                                                , centercoordinates = centercoordinates $ cookiedata x
                                                                                }
                                                  , walldata       = walldata x
                                                  , adjacentto     = adjacentto x
                                                  }
                       Seq.update updateindex 
                                  updatedtile
                                  ts

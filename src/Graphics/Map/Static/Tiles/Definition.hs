module Graphics.Map.Static.Tiles.Definition where

import GHC.Generics


data CookieType = Cookie
                | LargeCookie
                | NoCookie
  deriving (Show,Eq,Generic)

data CookieData = CookieData { cookietype        :: Maybe CookieType
                             , centercoordinates :: (Int,Int) --Top-left corner of cookie
                             }
  deriving (Show,Eq,Generic)

data WallData = WallData { wallup    :: Bool
                         , walldown  :: Bool
                         , wallleft  :: Bool
                         , wallright :: Bool
                         }
  deriving (Show,Eq,Generic)

data TileData = TileData { tilenumber     :: Int
                         , tilecoordinate :: [(Int,Int)] --top left, top right, bottom left, bottom right
                         , tileoccupied   :: Bool
                         , cookiedata     :: CookieData
                         , walldata       :: WallData
                         , adjacentto     :: [Int] --tiles this tile is directly adjacent to, defined by tilenumber.
                         }
  deriving (Show,Eq,Generic)

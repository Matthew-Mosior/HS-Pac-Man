module Graphics.Map.Static.Tiles.Definition where

import GHC.Generics


data CookieType = Cookie
                | LargeCookie
                | NoCookie
  deriving (Show,Eq,Generic)

data CookieData = CookieData { cookietype        :: Maybe CookieType
                             , cookiecoordinates :: Maybe (Int,Int) --Top-left corner of cookie
                             }
  deriving (Show,Eq,Generic)

data WallData = WallData { wallup    :: Bool
                         , walldown  :: Bool
                         , wallleft  :: Bool
                         , wallright :: Bool
                         }
  deriving (Show,Eq,Generic)

data TileData = TileData { tilenumber     :: Int
                         , tilecoordinate :: [(Int,Int)]
                         , tileoccupied   :: Bool
                         , cookiedata     :: CookieData
                         , walldata       :: WallData
                         }
  deriving (Show,Eq,Generic)

module Graphics.Map.Dynamic.Cookies.Definition where

import GHC.Generics


data CookieDrawType = Cookie
                    | LargeCookie
  deriving (Show,Eq,Generic)

data CookieDrawData = CookieDrawData { cookiedrawnumber      :: Int
                                     , cookiedrawtype        :: CookieDrawType
                                     , cookiedrawcoordinates :: (Int,Int)
                                     }
  deriving (Show,Eq,Generic)

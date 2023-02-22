module Graphics.Map.Static.Tiles.Default where

import Graphics.Map.Static.Tiles.Definition


defaulttile :: TileData
defaulttile = TileData { tilenumber     = (-1)
                       , tilecoordinate = []
                       , tileoccupied   = False
                       , cookiedata     = CookieData { cookietype = Nothing
                                                     , centercoordinates = ((-1),(-1))
                                                     }
                       , walldata       = WallData { wallup    = False
                                                   , walldown  = False
                                                   , wallleft  = False
                                                   , wallright = False
                                                   }
                       , adjacentto     = []
                       }

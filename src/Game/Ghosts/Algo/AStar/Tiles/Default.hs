module Game.Ghosts.Algo.AStar.Tiles.Default where

import Graphics.Map.Static.Tiles.Definition
import Game.Ghosts.Algo.AStar.Tiles.Definition


defaulttileastar :: TileDataAStar
defaulttileastar = TileDataAStar { tilenumberastar     = (-1)
                                 , tilecoordinateastar = []
                                 , tileoccupiedastar   = False
                                 , cookiedataastar     = CookieData { cookietype = Nothing
                                                                    , centercoordinates = ((-1),(-1))
                                                                    }
                                 , walldataastar       = WallData { wallup    = False
                                                                  , walldown  = False
                                                                  , wallleft  = False
                                                                  , wallright = False
                                                                  }
                                 , adjacenttoastar     = []
                                 , fscoreastar         = 0
                                 }

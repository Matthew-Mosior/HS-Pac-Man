module Graphics.Map.Static.Tiles.AllTileData where


import Graphics.Map.Static.Tiles.Definition

import Data.Sequence


{-All tile data.-}

alltiledatainit :: Seq TileData 
alltiledatainit = fromList $
                  [ TileData 1
                             [(40,160),(80,160),(40,200),(80,200)]                                
                             False
                             (CookieData (Just Cookie)
                                         (Just (50,170))
                             )
                             (WallData True
                                       False
                                       True
                                       False
                             )
                  , TileData 2
                             [(80,160),(120,160),(80,200),(120,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (90,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 3
                             [(120,160),(160,160),(120,200),(160,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (130,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 4
                             [(160,160),(200,160),(160,200),(200,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (170,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 5
                             [(200,160),(240,160),(200,200),(240,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (210,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 6
                             [(240,160),(280,160),(240,200),(280,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (250,170))
                             )
                             (WallData True
                                       False
                                       False
                                       False
                             )
                  , TileData 7
                             [(280,160),(320,160),(280,200),(320,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (290,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 8
                             [(320,160),(360,160),(320,200),(360,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (330,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 9
                             [(360,160),(400,160),(360,200),(400,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (370,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 10
                             [(400,160),(440,160),(400,200),(440,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (410,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 11
                             [(440,160),(480,160),(440,200),(480,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (450,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 12
                             [(480,160),(520,160),(480,200),(520,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (490,170))
                             )
                             (WallData True
                                       False
                                       False
                                       True
                             )
                  , TileData 13
                             [(480,200),(520,200),(480,240),(520,240)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (490,210))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 14
                             [(480,240),(520,240),(480,280),(520,280)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (490,250))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 15
                             [(480,280),(520,280),(480,320),(520,320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (490,290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  ]

{----------------}

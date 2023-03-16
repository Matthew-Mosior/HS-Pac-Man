module Graphics.Map.Static.Tiles.GhostHouse.AllTileData where

import Graphics.Map.Static.Tiles.Definition

import Data.Sequence


allghosthousetiledatainit :: Seq TileData
allghosthousetiledatainit = fromList $
                            [ --25(GHOST HOUSE)
                              TileData 301
                                       [(440,640),(480,640),(440,680),(480,680)]
                                       False
				       (CookieData Nothing
                                                   (450,650)
                                       )
                                       (WallData True
                                                 False
                                                 True
                                                 False
                                       )
                                       [302,312]
                            , TileData 302
                                       [(480,640),(520,640),(480,680),(520,680)]
                                       False
				       (CookieData Nothing
                                                   (490,650)
                                       )
                                       (WallData True
                                                 False
                                                 False
                                                 False
                                       )
                                       [301,303,311]
                            , TileData 303
                                       [(520,640),(560,640),(520,680),(560,680)]
                                       False
				       (CookieData Nothing
                                                   (530,650)
                                       )
                                       (WallData True
                                                 False
                                                 False
                                                 False
                                       )
                                       [302,304,310]
                            , TileData 304
                                       [(560,640),(600,640),(560,680),(600,680)]
                                       False
				       (CookieData Nothing
                                                   (570,650)
                                       )
                                       (WallData True
                                                 False
                                                 False
                                                 False
                                       )
                                       [303,305,309]
                            , TileData 305
                                       [(600,640),(640,640),(600,680),(640,680)]
                                       False
				       (CookieData Nothing
                                                   (610,650)
                                       )
                                       (WallData True
                                                 False
                                                 False
                                                 False
                                       )
                                       [304,306,308]
                            , TileData 306
                                       [(640,640),(680,640),(640,680),(680,680)]
                                       False
				       (CookieData Nothing
                                                   (650,650)
                                       )
                                       (WallData True
                                                 False
                                                 False
                                                 False
                                       )
                                       [305,307]
                            , TileData 307
                                       [(640,680),(680,680),(640,720),(680,720)]
                                       False
				       (CookieData Nothing
                                                   (650,690)
                                       )
                                       (WallData False
                                                 False
                                                 False
                                                 True
                                       )
                                       [306,308,318]
                            , TileData 308
                                       [(600,680),(640,680),(600,720),(640,720)]
                                       False
				       (CookieData Nothing
                                                   (610,690)
                                       )
                                       (WallData False
                                                 False
                                                 False
                                                 False
                                       )
                                       [305,307,309,317]
                            , TileData 309
                                       [(560,680),(600,680),(560,720),(600,720)]
                                       False
				       (CookieData Nothing
                                                   (570,690)
                                       )
                                       (WallData False
                                                 False
                                                 False
                                                 False
                                       )
                                       [304,308,310,316]
                            , TileData 310
                                       [(520,680),(560,680),(520,720),(560,720)]
                                       False
				       (CookieData Nothing
                                                   (530,690)
                                       )
                                       (WallData False
                                                 False
                                                 False
                                                 False
                                       )
                                       [303,309,311,315]
                            , TileData 311
                                       [(480,680),(520,680),(480,720),(520,720)]
                                       False
				       (CookieData Nothing
                                                   (490,690)
                                       )
                                       (WallData False
                                                 False
                                                 False
                                                 False
                                       )
                                       [302,310,312,314]
                            , TileData 312
                                       [(440,680),(480,680),(440,720),(480,720)]
                                       False
				       (CookieData Nothing
                                                   (450,690)
                                       )
                                       (WallData False
                                                 False
                                                 True
                                                 False
                                       )
                                       [301,311,313]
                            , TileData 313
                                       [(440,720),(480,720),(440,760),(480,760)]
                                       False
				       (CookieData Nothing
                                                   (450,730)
                                       )
                                       (WallData False
                                                 True
                                                 True
                                                 False
                                       )
                                       [312,314]
                            , TileData 314
                                       [(480,720),(520,720),(480,760),(520,760)]
                                       False
				       (CookieData Nothing
                                                   (490,730)
                                       )
                                       (WallData False
                                                 True
                                                 False
                                                 False
                                       )
                                       [311,313,315]
                            , TileData 315
                                       [(520,720),(560,720),(520,760),(560,760)]
                                       False
				       (CookieData Nothing
                                                   (530,730)
                                       )
                                       (WallData False
                                                 True
                                                 False
                                                 False
                                       )
                                       [310,314,316]
                            , TileData 316
                                       [(560,720),(600,720),(560,760),(600,760)]
                                       False
				       (CookieData Nothing
                                                   (570,730)
                                       )
                                       (WallData False
                                                 True
                                                 False
                                                 False
                                       )
                                       [309,315,317]
                            , TileData 317
                                       [(600,720),(640,720),(600,760),(640,760)]
                                       False
				       (CookieData Nothing
                                                   (610,730)
                                       )
                                       (WallData False
                                                 True
                                                 False
                                                 False
                                       )
                                       [308,316,318]
                            , TileData 318
                                       [(640,720),(680,720),(640,760),(680,760)]
                                       False
				       (CookieData Nothing
                                                   (650,730)
                                       )
                                       (WallData False
                                                 True
                                                 False
                                                 True
                                       )
                                       [307,317]
                            ]

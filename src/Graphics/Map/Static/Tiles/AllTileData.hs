module Graphics.Map.Static.Tiles.AllTileData where


import Graphics.Map.Static.Tiles.Definition

import Data.Sequence


{-All tile data.-}

alltiledatainit :: Seq TileData 
alltiledatainit = fromList $
                  [ --0
                    TileData 1
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
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 14
                             [(480,240),(520,240),(480,280),(520,280)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (490,250))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 15
                             [(480,280),(520,280),(480,320),(520,320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (490,290))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 16
                             [(480,320),(520,320),(480,360),(520,360)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (490,330))
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  , TileData 17
                             [(520,320),(560,320),(520,360),(560,360)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (530,330))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 18
                             [(560,320),(600,320),(560,360),(600,360)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (570,330))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 19
                             [(600,320),(640,320),(600,360),(640,360)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (610,330))
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  , TileData 20
                             [(600,280),(640,280),(600,320),(640,320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (610,290))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 21
                             [(600,240),(640,240),(600,280),(640,280)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (610,250))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 22
                             [(600,200),(640,200),(600,240),(640,240)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (610,210))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 23
                             [(600,160),(640,160),(600,200),(640,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (610,170))
                             )
                             (WallData True
                                       False
                                       True
                                       False
                             )
                  , TileData 24
                             [(640,160),(680,160),(640,200),(680,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (650,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 25
                             [(680,160),(720,160),(680,200),(720,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (690,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 26
                             [(720,160),(760,160),(720,200),(760,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (730,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 27
                             [(760,160),(800,160),(760,200),(800,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (770,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 28
                             [(800,160),(840,160),(800,200),(840,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (810,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 29
                             [(840,160),(880,160),(840,200),(880,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,170))
                             )
                             (WallData True
                                       False
                                       False
                                       False
                             )
                  , TileData 30
                             [(880,160),(920,160),(880,200),(920,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (890,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 31
                             [(920,160),(960,160),(920,200),(960,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (930,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 32
                             [(960,160),(1000,160),(960,200),(1000,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (970,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 33
                             [(1000,160),(1040,160),(1000,200),(1040,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1010,170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 34
                             [(1040,160),(1080,160),(1040,200),(1080,200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,170))
                             )
                             (WallData True
                                       False
                                       False
                                       True
                             )
                  , TileData 35
                             [(1040,200),(1080,200),(1040,240),(1080,240)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,210))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 36
                             [(1040,240),(1080,240),(1040,280),(1080,280)]
                             False
                             (CookieData (Just LargeCookie)
                                         (Just (1050,250))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 37
                             [(1040,280),(1080,280),(1040,320),(1080,320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,290))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 38
                             [(1040,320),(1080,320),(1040,360),(1080,360)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,330))
                             )
                             (WallData False
                                       False
                                       False
                                       True
                             )
                  , TileData 39
                             [(1040,360),(1080,360),(1040,400),(1080,400)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,370))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 40
                             [(1040,400),(1080,400),(1040,440),(1080,440)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,410))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 41
                             [(1040,440),(1080,440),(1040,480),(1080,480)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,450))
                             )
                             (WallData False
                                       True
                                       False
                                       True
                             )
                  , TileData 42
                             [(1000,440),(1040,440),(1000,480),(1040,480)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1010,450))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 43
                             [(960,440),(1000,440),(960,480),(1000,480)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (970,450))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 44
                             [(920,440),(960,440),(920,480),(960,480)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (930,450))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 45
                             [(880,440),(920,440),(880,480),(920,480)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (890,450))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 46
                             [(840,440),(880,440),(840,480),(880,480)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,450))
                             )
                             (WallData False
                                       False
                                       True
                                       False
                             )
                  , TileData 47
                             [(840,480),(880,480),(840,520),(880,520)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,490))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 48
                             [(840,520),(880,520),(840,560),(880,560)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,530))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 49
                             [(840,560),(880,560),(840,600),(880,600)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,570))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 50
                             [(840,600),(880,600),(840,640),(880,640)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,610))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 51
                             [(840,640),(880,640),(840,680),(880,680)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,650))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 52
                             [(840,680),(880,680),(840,720),(880,720)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,690))
                             )
                             (WallData False
                                       False
                                       False
                                       False
                             )
                  , TileData 53
                             [(840,720),(880,720),(840,760),(880,760)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,730))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 54
                             [(840,760),(880,760),(840,800),(880,800)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,770))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 55
                             [(840,800),(880,800),(840,840),(880,840)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,810))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 56
                             [(840,840),(880,840),(840,880),(880,880)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,850))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 57
                             [(840,880),(880,880),(840,920),(880,920)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,890))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 58
                             [(840,920),(880,920),(840,960),(880,960)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,930))
                             )
                             (WallData False
                                       False
                                       False
                                       False
                             )
                  , TileData 59
                             [(880,920),(920,920),(880,960),(920,960)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (890,930))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 60
                             [(920,920),(960,920),(920,960),(960,960)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (930,930))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 61
                             [(960,920),(1000,920),(960,960),(1000,960)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (970,930))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 62
                             [(1000,920),(1040,920),(1000,960),(1040,960)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1010,930))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 63
                             [(1040,920),(1080,920),(1040,960),(1080,960)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,930))
                             )
                             (WallData True
                                       False
                                       False
                                       True
                             )
                  , TileData 64
                             [(1040,960),(1080,960),(1040,1000),(1080,1000)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,970))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 65
                             [(1040,1000),(1080,1000),(1040,1040),(1080,1040)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,1010))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 66
                             [(1040,1040),(1080,1040),(1040,1080),(1080,1080)]
                             False
                             (CookieData (Just LargeCookie)
                                         (Just (1050,1050))
                             )
                             (WallData False
                                       True
                                       False
                                       True
                             )
                  , TileData 67
                             [(1000,1040),(1040,1040),(1000,1080),(1040,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1010,1050))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 68
                             [(960,1040),(1000,1040),(960,1080),(1000,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (970,1050))
                             )
                             (WallData True
                                       False
                                       True
                                       False
                             )
                  , TileData 69
                             [(960,1080),(1000,1080),(960,1120),(1000,1120)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (970,1090))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 70
                             [(960,1120),(1000,1120),(960,1160),(1000,1160)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (970,1130))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 71
                             [(960,1160),(1000,1160),(960,1200),(1000,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (970,1170))
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  , TileData 72
                             [(1000,1160),(1040,1160),(1000,1200),(1040,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1010,1170))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 73
                             [(1040,1160),(1080,1160),(1040,1200),(1080,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,1170))
                             )
                             (WallData True
                                       False
                                       False
                                       True
                             )
                  , TileData 74
                             [(1040,1200),(1080,1200),(1040,1240),(1080,1240)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,1210))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 75
                             [(1040,1240),(1080,1240),(1040,1280),(1080,1280)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,1250))
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 76
                             [(1040,1280),(1080,1280),(1040,1320),(1080,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1050,1290))
                             )
                             (WallData False
                                       True
                                       False
                                       True
                             )
                  , TileData 77
                             [(1000,1280),(1040,1280),(1000,1320),(1040,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (1010,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 78
                             [(960,1280),(1000,1280),(960,1320),(1000,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (970,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 79
                             [(920,1280),(960,1280),(920,1320),(960,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (930,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 80
                             [(880,1280),(920,1280),(880,1320),(920,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (890,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 81
                             [(840,1280),(880,1280),(840,1320),(880,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (850,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 82
                             [(800,1280),(840,1280),(800,1320),(840,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (810,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 83
                             [(760,1280),(800,1280),(760,1320),(800,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (770,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 84
                             [(720,1280),(760,1280),(720,1320),(760,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (730,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 85
                             [(680,1280),(720,1280),(680,1320),(720,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (690,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 86
                             [(640,1280),(680,1280),(640,1320),(680,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (650,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 87
                             [(600,1280),(640,1280),(600,1320),(640,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (610,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 88
                             [(560,1280),(600,1280),(560,1320),(600,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (570,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 89
                             [(520,1280),(560,1280),(520,1320),(560,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (530,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 90
                             [(480,1280),(520,1280),(480,1320),(520,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (490,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 91
                             [(440,1280),(480,1280),(440,1320),(480,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (450,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 92
                             [(400,1280),(440,1280),(400,1320),(440,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (410,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 93
                             [(360,1280),(400,1280),(360,1320),(400,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (370,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 94
                             [(320,1280),(360,1280),(320,1320),(360,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (330,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 95
                             [(280,1280),(320,1280),(280,1320),(320,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (290,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 96
                             [(240,1280),(280,1280),(240,1320),(280,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (250,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 97
                             [(200,1280),(240,1280),(200,1320),(240,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (210,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 98
                             [(160,1280),(200,1280),(160,1320),(200,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (210,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 99
                             [(120,1280),(160,1280),(120,1320),(160,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (130,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 100
                             [(80,1280),(120,1280),(80,1320),(120,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (90,1290))
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 101 
                             [(40,1280),(80,1280),(40,1320),(80,1320)]
                             False
                             (CookieData (Just Cookie)
                                         (Just (50,1290))
                             )
                             (WallData False
                                       True
                                       True
                                       False
                             )
                  ]

{----------------}

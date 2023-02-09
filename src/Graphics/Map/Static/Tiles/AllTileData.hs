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
                                         (50,170)
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
                                         (90,170)
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
                                         (130,170)
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
                                         (170,170)
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
                                         (210,170)
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
                                         (250,170)
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
                                         (290,170)
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
                                         (330,170)
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
                                         (370,170)
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
                                         (410,170)
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
                                         (450,170)
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
                                         (490,170)
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
                                         (490,210)
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
                                         (490,250)
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
                                         (490,290)
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
                                         (490,330)
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
                                         (530,330)
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
                                         (570,330)
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
                                         (610,330)
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
                                         (610,290)
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
                                         (610,250)
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
                                         (610,210)
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
                                         (610,170)
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
                                         (650,170)
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
                                         (690,170)
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
                                         (730,170)
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
                                         (770,170)
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
                                         (810,170)
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
                                         (850,170)
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
                                         (890,170)
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
                                         (930,170)
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
                                         (970,170)
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
                                         (1010,170)
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
                                         (1050,170)
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
                                         (1050,210)
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
                                         (1050,250)
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
                                         (1050,290)
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
                                         (1050,330)
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
                                         (1050,370)
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
                                         (1050,410)
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
                                         (1050,450)
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
                                         (1010,450)
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
                                         (970,450)
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
                                         (930,450)
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
                                         (890,450)
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
                                         (850,450)
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
                                         (850,490)
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
                                         (850,530)
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
                                         (850,570)
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
                                         (850,610)
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
                                         (850,650)
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
                                         (850,690)
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
                                         (850,730)
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
                                         (850,770)
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
                                         (850,810)
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
                                         (850,850)
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
                                         (850,890)
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
                                         (850,930)
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
                                         (890,930)
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
                                         (930,930)
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
                                         (970,930)
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
                                         (1010,930)
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
                                         (1050,930)
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
                                         (1050,970)
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
                                         (1050,1010)
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
                                         (1050,1050)
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
                                         (1010,1050)
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
                                         (970,1050)
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
                                         (970,1090)
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
                                         (970,1130)
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
                                         (970,1170)
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
                                         (1010,1170)
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
                                         (1050,1170)
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
                                         (1050,1210)
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
                                         (1050,1250)
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
                                         (1050,1290)
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
                                         (1010,1290)
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
                                         (970,1290)
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
                                         (930,1290)
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
                                         (890,1290)
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
                                         (850,1290)
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
                                         (810,1290)
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
                                         (770,1290)
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
                                         (730,1290)
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
                                         (690,1290)
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
                                         (650,1290)
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
                                         (610,1290)
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
                                         (570,1290)
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
                                         (530,1290)
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
                                         (490,1290)
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
                                         (450,1290)
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
                                         (410,1290)
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
                                         (370,1290)
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
                                         (330,1290)
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
                                         (290,1290)
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
                                         (250,1290)
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
                                         (210,1290)
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
                                         (210,1290)
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
                                         (130,1290)
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
                                         (90,1290)
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
                                         (50,1290)
                             )
                             (WallData False
                                       True
                                       True
                                       False
                             )
                  , TileData 102 
                             [(40,1240),(80,1240),(40,1280),(80,1280)]
                             False
                             (CookieData (Just Cookie)
                                         (50,1250)
                             )
                             (WallData False
                                       False 
                                       True
                                       True
                             )
                  , TileData 103 
                             [(40,1200),(80,1200),(40,1240),(80,1240)]
                             False
                             (CookieData (Just Cookie)
                                         (50,1210)
                             )
                             (WallData False
                                       False 
                                       True
                                       True
                             )
                  , TileData 104 
                             [(40,1160),(80,1160),(40,1200),(80,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (50,1170)
                             )
                             (WallData True 
                                       False
                                       True
                                       False
                             )
                  , TileData 105 
                             [(80,1160),(120,1160),(80,1200),(120,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (90,1170)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 106 
                             [(120,1160),(160,1160),(120,1200),(160,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (130,1170)
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  , TileData 107 
                             [(120,1120),(160,1120),(120,1160),(160,1160)]
                             False
                             (CookieData (Just Cookie)
                                         (130,1130)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 108
                             [(120,1080),(160,1080),(120,1120),(160,1120)]
                             False
                             (CookieData (Just Cookie)
                                         (130,1090)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 109
                             [(120,1040),(160,1040),(120,1080),(160,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (130,1050)
                             )
                             (WallData True
                                       False
                                       False
                                       True
                             )
                  , TileData 110
                             [(80,1040),(120,1040),(80,1080),(120,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (90,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 111
                             [(40,1040),(80,1040),(40,1080),(80,1080)]
                             False
                             (CookieData (Just LargeCookie)
                                         (50,1050)
                             )
                             (WallData False
                                       True
                                       True
                                       False
                             )
                  , TileData 112
                             [(40,1000),(80,1000),(40,1040),(80,1040)]
                             False
                             (CookieData (Just Cookie)
                                         (50,1010)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 113
                             [(40,960),(80,960),(40,1000),(80,1000)]
                             False
                             (CookieData (Just Cookie)
                                         (50,970)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 114
                             [(40,920),(80,920),(40,960),(80,960)]
                             False
                             (CookieData (Just Cookie)
                                         (50,930)
                             )
                             (WallData True
                                       False
                                       True
                                       False
                             )
                  , TileData 115
                             [(80,920),(120,920),(80,960),(120,960)]
                             False
                             (CookieData (Just Cookie)
                                         (90,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 116
                             [(120,920),(160,920),(120,960),(160,960)]
                             False
                             (CookieData (Just Cookie)
                                         (130,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 117
                             [(160,920),(200,920),(160,960),(200,960)]
                             False
                             (CookieData (Just Cookie)
                                         (170,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 118
                             [(200,920),(240,920),(200,960),(240,960)]
                             False
                             (CookieData (Just Cookie)
                                         (210,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 119
                             [(240,920),(280,920),(240,960),(280,960)]
                             False
                             (CookieData (Just Cookie)
                                         (250,930)
                             )
                             (WallData False
                                       False
                                       False
                                       False
                             )
                  , TileData 120
                             [(240,880),(280,880),(240,920),(280,920)]
                             False
                             (CookieData (Just Cookie)
                                         (250,890)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 121
                             [(240,840),(280,840),(240,880),(280,880)]
                             False
                             (CookieData (Just Cookie)
                                         (250,850)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 122
                             [(240,800),(280,800),(240,840),(280,840)]
                             False
                             (CookieData (Just Cookie)
                                         (250,810)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 123
                             [(240,760),(280,760),(240,800),(280,800)]
                             False
                             (CookieData (Just Cookie)
                                         (250,770)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 124
                             [(240,720),(280,720),(240,760),(280,760)]
                             False
                             (CookieData (Just Cookie)
                                         (250,730)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 125
                             [(240,680),(280,680),(240,720),(280,720)]
                             False
                             (CookieData (Just Cookie)
                                         (250,690)
                             )
                             (WallData False
                                       False
                                       False
                                       False
                             )
                  , TileData 126
                             [(240,640),(280,640),(240,680),(280,680)]
                             False
                             (CookieData (Just Cookie)
                                         (250,650)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 127
                             [(240,600),(280,600),(240,640),(280,640)]
                             False
                             (CookieData (Just Cookie)
                                         (250,610)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 128
                             [(240,560),(280,560),(240,600),(280,600)]
                             False
                             (CookieData (Just Cookie)
                                         (250,570)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 129
                             [(240,520),(280,520),(240,560),(280,560)]
                             False
                             (CookieData (Just Cookie)
                                         (250,530)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 130
                             [(240,480),(280,480),(240,520),(280,520)]
                             False
                             (CookieData (Just Cookie)
                                         (250,490)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 131
                             [(240,440),(280,440),(240,480),(280,480)]
                             False
                             (CookieData (Just Cookie)
                                         (250,450)
                             )
                             (WallData False
                                       False
                                       False
                                       True
                             )
                  , TileData 132
                             [(200,440),(240,440),(200,480),(240,480)]
                             False
                             (CookieData (Just Cookie)
                                         (210,450)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 133
                             [(160,440),(200,440),(160,480),(200,480)]
                             False
                             (CookieData (Just Cookie)
                                         (170,450)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 134
                             [(120,440),(160,440),(120,480),(160,480)]
                             False
                             (CookieData (Just Cookie)
                                         (130,450)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 135
                             [(80,440),(120,440),(80,480),(120,480)]
                             False
                             (CookieData (Just Cookie)
                                         (90,450)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 136
                             [(40,440),(80,440),(40,480),(80,480)]
                             False
                             (CookieData (Just Cookie)
                                         (50,450)
                             )
                             (WallData False
                                       True
                                       True
                                       False
                             )
                  , TileData 137
                             [(40,400),(80,400),(40,440),(80,440)]
                             False
                             (CookieData (Just Cookie)
                                         (50,410)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 138
                             [(40,360),(80,360),(40,400),(80,400)]
                             False
                             (CookieData (Just Cookie)
                                         (50,370)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 139
                             [(40,320),(80,320),(40,360),(80,360)]
                             False
                             (CookieData (Just Cookie)
                                         (50,330)
                             )
                             (WallData False
                                       False
                                       True
                                       False
                             )
                  , TileData 140
                             [(40,280),(80,280),(40,320),(80,320)]
                             False
                             (CookieData (Just Cookie)
                                         (50,290)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 141
                             [(40,240),(80,240),(40,280),(80,280)]
                             False
                             (CookieData (Just LargeCookie)
                                         (50,250)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 142
                             [(40,200),(80,200),(40,240),(80,240)]
                             False
                             (CookieData (Just Cookie)
                                         (50,210)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --1
                  , TileData 143
                             [(80,320),(120,320),(80,360),(120,360)]
                             False
                             (CookieData (Just Cookie)
                                         (90,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 144
                             [(120,320),(160,320),(120,360),(160,360)]
                             False
                             (CookieData (Just Cookie)
                                         (130,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 145
                             [(160,320),(200,320),(160,360),(200,360)]
                             False
                             (CookieData (Just Cookie)
                                         (170,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 146
                             [(200,320),(240,320),(200,360),(240,360)]
                             False
                             (CookieData (Just Cookie)
                                         (210,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 147
                             [(240,320),(280,320),(240,360),(280,360)]
                             False
                             (CookieData (Just Cookie)
                                         (250,330)
                             )
                             (WallData False
                                       False
                                       False
                                       False
                             )
                  , TileData 148
                             [(240,280),(280,280),(240,320),(280,320)]
                             False
                             (CookieData (Just Cookie)
                                         (250,290)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 149
                             [(240,240),(280,240),(240,280),(280,280)]
                             False
                             (CookieData (Just Cookie)
                                         (250,250)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 150
                             [(240,200),(280,200),(240,240),(280,240)]
                             False
                             (CookieData (Just Cookie)
                                         (250,210)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --2
                  , TileData 151
                             [(280,320),(320,320),(280,360),(320,360)]
                             False
                             (CookieData (Just Cookie)
                                         (290,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 152
                             [(320,320),(360,320),(320,360),(360,360)]
                             False
                             (CookieData (Just Cookie)
                                         (330,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 153
                             [(360,320),(400,320),(360,360),(400,360)]
                             False
                             (CookieData (Just Cookie)
                                         (370,330)
                             )
                             (WallData True
                                       False
                                       False
                                       False
                             )
                  , TileData 154
                             [(400,320),(440,320),(400,360),(440,360)]
                             False
                             (CookieData (Just Cookie)
                                         (410,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 155
                             [(440,320),(480,320),(440,360),(480,360)]
                             False
                             (CookieData (Just Cookie)
                                         (450,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  --3
                  , TileData 156
                             [(360,360),(400,360),(360,400),(400,400)]
                             False
                             (CookieData (Just Cookie)
                                         (370,370)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 157
                             [(360,400),(400,400),(360,440),(400,440)]
                             False
                             (CookieData (Just Cookie)
                                         (370,410)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 158
                             [(360,440),(400,440),(360,480),(400,480)]
                             False
                             (CookieData (Just Cookie)
                                         (370,450)
                             )
                             (WallData False
                                       True
                                       True
                                       False
                             )
                  , TileData 159
                             [(400,440),(440,440),(400,480),(440,480)]
                             False
                             (CookieData (Just Cookie)
                                         (410,450)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 160
                             [(440,440),(480,440),(440,480),(480,480)]
                             False
                             (CookieData (Just Cookie)
                                         (450,450)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 161
                             [(480,440),(520,440),(480,480),(520,480)]
                             False
                             (CookieData (Just Cookie)
                                         (490,450)
                             )
                             (WallData True
                                       False
                                       False
                                       True
                             )
                  --4
                  , TileData 162
                             [(600,320),(640,320),(600,360),(640,360)]
                             False
                             (CookieData (Just Cookie)
                                         (610,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 163
                             [(640,320),(680,320),(640,360),(680,360)]
                             False
                             (CookieData (Just Cookie)
                                         (650,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 164
                             [(680,320),(720,320),(680,360),(720,360)]
                             False
                             (CookieData (Just Cookie)
                                         (690,330)
                             )
                             (WallData True
                                       False
                                       False
                                       False
                             )
                  , TileData 165
                             [(720,320),(760,320),(720,360),(760,360)]
                             False
                             (CookieData (Just Cookie)
                                         (730,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 166
                             [(760,320),(800,320),(760,360),(800,360)]
                             False
                             (CookieData (Just Cookie)
                                         (770,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                   , TileData 167
                             [(800,320),(840,320),(800,360),(840,360)]
                             False
                             (CookieData (Just Cookie)
                                         (810,330)
                             )
                             (WallData False
                                       False
                                       False
                                       False
                             )
                  , TileData 168
                             [(800,280),(840,280),(800,320),(840,320)]
                             False
                             (CookieData (Just Cookie)
                                         (810,290)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 169
                             [(800,240),(840,240),(800,280),(840,280)]
                             False
                             (CookieData (Just Cookie)
                                         (810,250)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 170
                             [(800,200),(840,200),(800,240),(840,240)]
                             False
                             (CookieData (Just Cookie)
                                         (810,210)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --5
                  , TileData 171
                             [(840,320),(880,320),(840,360),(880,360)]
                             False
                             (CookieData (Just Cookie)
                                         (850,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 172
                             [(880,320),(920,320),(880,360),(920,360)]
                             False
                             (CookieData (Just Cookie)
                                         (890,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 173
                             [(920,320),(960,320),(920,360),(960,360)]
                             False
                             (CookieData (Just Cookie)
                                         (930,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 174
                             [(960,320),(1000,320),(960,360),(1000,360)]
                             False
                             (CookieData (Just Cookie)
                                         (970,330)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  --6
                  , TileData 175
                             [(800,360),(840,360),(800,400),(840,400)]
                             False
                             (CookieData (Just Cookie)
                                         (810,370)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 176
                             [(800,400),(840,400),(800,440),(840,440)]
                             False
                             (CookieData (Just Cookie)
                                         (810,410)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --7
                  , TileData 177
                             [(680,360),(720,360),(680,400),(720,400)]
                             False
                             (CookieData (Just Cookie)
                                         (690,370)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 178
                             [(680,400),(720,400),(680,440),(720,440)]
                             False
                             (CookieData (Just Cookie)
                                         (690,410)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 179
                             [(680,440),(720,440),(680,480),(720,480)]
                             False
                             (CookieData (Just Cookie)
                                         (690,450)
                             )
                             (WallData False
                                       True
                                       False
                                       True
                             )
                  , TileData 180
                             [(640,440),(680,440),(640,480),(680,480)]
                             False
                             (CookieData (Just Cookie)
                                         (650,450)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 181
                             [(600,440),(640,440),(600,480),(640,480)]
                             False
                             (CookieData (Just Cookie)
                                         (610,450)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 182
                             [(560,440),(600,440),(560,480),(600,480)]
                             False
                             (CookieData (Just Cookie)
                                         (570,450)
                             )
                             (WallData True
                                       False
                                       True
                                       False
                             )
                  --8
                  , TileData 183
                             [(240,960),(280,960),(240,1000),(280,1000)]
                             False
                             (CookieData (Just Cookie)
                                         (250,970)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 184
                             [(240,1000),(280,1000),(240,1040),(280,1040)]
                             False
                             (CookieData (Just Cookie)
                                         (250,1010)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 185
                             [(240,1040),(280,1040),(240,1080),(280,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (250,1050)
                             )
                             (WallData False
                                       False
                                       True
                                       False
                             )
                  , TileData 186
                             [(240,1080),(280,1080),(240,1120),(280,1120)]
                             False
                             (CookieData (Just Cookie)
                                         (250,1090)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 187
                             [(240,1120),(280,1120),(240,1160),(280,1160)]
                             False
                             (CookieData (Just Cookie)
                                         (250,1130)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 188
                             [(240,1160),(280,1160),(240,1200),(280,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (250,1170)
                             )
                             (WallData False
                                       True
                                       False
                                       True
                             )
                  , TileData 189
                             [(200,1160),(240,1160),(200,1200),(240,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (210,1170)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 190
                             [(160,1160),(200,1160),(160,1200),(200,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (170,1170)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  --9
                  , TileData 191
                             [(280,920),(320,920),(280,960),(320,960)]
                             False
                             (CookieData (Just Cookie)
                                         (290,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 192
                             [(320,920),(360,920),(320,960),(360,960)]
                             False
                             (CookieData (Just Cookie)
                                         (330,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 193
                             [(360,920),(400,920),(360,960),(400,960)]
                             False
                             (CookieData (Just Cookie)
                                         (370,930)
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  , TileData 194
                             [(400,920),(440,920),(400,960),(440,960)]
                             False
                             (CookieData (Just Cookie)
                                         (410,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 195
                             [(440,920),(480,920),(440,960),(480,960)]
                             False
                             (CookieData (Just Cookie)
                                         (450,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 196
                             [(480,920),(520,920),(480,960),(520,960)]
                             False
                             (CookieData (Just Cookie)
                                         (490,930)
                             )
                             (WallData True
                                       False
                                       False
                                       True
                             )
                  , TileData 197
                             [(480,960),(520,960),(480,1000),(520,1000)]
                             False
                             (CookieData (Just Cookie)
                                         (490,970)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 198
                             [(480,1000),(520,1000),(480,1040),(520,1040)]
                             False
                             (CookieData (Just Cookie)
                                         (490,1010)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 199
                             [(480,1040),(520,1040),(480,1080),(520,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (490,1050)
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  --10
                  , TileData 200
                             [(280,1040),(320,1040),(280,1080),(320,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (290,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 201
                             [(320,1040),(360,1040),(320,1080),(360,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (330,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 202
                             [(360,1040),(400,1040),(360,1080),(400,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (370,1050)
                             )
                             (WallData True
                                       False
                                       False
                                       False
                             )
                  , TileData 203
                             [(400,1040),(440,1040),(400,1080),(440,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (410,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 204
                             [(440,1040),(480,1040),(440,1080),(480,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (450,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  --11
                  , TileData 205
                             [(360,1080),(400,1080),(360,1120),(400,1120)]
                             False
                             (CookieData (Just Cookie)
                                         (370,1090)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 206
                             [(360,1120),(400,1120),(360,1160),(400,1160)]
                             False
                             (CookieData (Just Cookie)
                                         (370,1130)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 207
                             [(360,1160),(400,1160),(360,1200),(400,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (370,1170)
                             )
                             (WallData False
                                       True
                                       True
                                       False
                             )
                  , TileData 208
                             [(400,1160),(440,1160),(400,1200),(440,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (410,1170)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 209
                             [(440,1160),(480,1160),(440,1200),(480,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (450,1170)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 210
                             [(480,1160),(520,1160),(480,1200),(520,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (490,1170)
                             )
                             (WallData True
                                       False
                                       False
                                       True
                             )
                  , TileData 211
                             [(480,1200),(520,1200),(480,1240),(520,1240)]
                             False
                             (CookieData (Just Cookie)
                                         (490,1210)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 212
                             [(480,1240),(520,1240),(480,1280),(520,1280)]
                             False
                             (CookieData (Just Cookie)
                                         (490,1250)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --12
                  , TileData 213
                             [(840,960),(880,960),(840,1000),(880,1000)]
                             False
                             (CookieData (Just Cookie)
                                         (850,970)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 214
                             [(840,1000),(880,1000),(840,1040),(880,1040)]
                             False
                             (CookieData (Just Cookie)
                                         (850,1010)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 215
                             [(840,1040),(880,1040),(840,1080),(880,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (850,1050)
                             )
                             (WallData False
                                       False
                                       False
                                       True
                             )
                  , TileData 216
                             [(840,1080),(880,1080),(840,1120),(880,1120)]
                             False
                             (CookieData (Just Cookie)
                                         (850,1090)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 217
                             [(840,1120),(880,1120),(840,1160),(880,1160)]
                             False
                             (CookieData (Just Cookie)
                                         (850,1130)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 218
                             [(840,1160),(880,1160),(840,1200),(880,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (850,1170)
                             )
                             (WallData False
                                       True
                                       True
                                       False
                             )
                  , TileData 219
                             [(880,1160),(920,1160),(880,1200),(920,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (890,1170)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 220
                             [(920,1160),(960,1160),(920,1200),(960,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (930,1170)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  --13
                  , TileData 221
                             [(800,920),(840,920),(800,960),(840,960)]
                             False
                             (CookieData (Just Cookie)
                                         (810,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 222
                             [(760,920),(800,920),(760,960),(800,960)]
                             False
                             (CookieData (Just Cookie)
                                         (770,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 223
                             [(720,920),(760,920),(720,960),(760,960)]
                             False
                             (CookieData (Just Cookie)
                                         (730,930)
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  , TileData 224
                             [(680,920),(720,920),(680,960),(720,960)]
                             False
                             (CookieData (Just Cookie)
                                         (690,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 225
                             [(640,920),(680,920),(640,960),(680,960)]
                             False
                             (CookieData (Just Cookie)
                                         (650,930)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 226
                             [(600,920),(640,920),(600,960),(640,960)]
                             False
                             (CookieData (Just Cookie)
                                         (610,930)
                             )
                             (WallData True
                                       False
                                       True
                                       False
                             )
                  , TileData 227
                             [(600,960),(640,960),(600,1000),(640,1000)]
                             False
                             (CookieData (Just Cookie)
                                         (610,970)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 228
                             [(600,1000),(640,1000),(600,1040),(640,1040)]
                             False
                             (CookieData (Just Cookie)
                                         (610,1010)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 229
                             [(600,1040),(640,1040),(600,1080),(640,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (610,1050)
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  --14
                  , TileData 230
                             [(800,1040),(840,1040),(800,1080),(840,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (810,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 231
                             [(760,1040),(800,1040),(760,1080),(800,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (770,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 232
                             [(720,1040),(760,1040),(720,1080),(760,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (730,1050)
                             )
                             (WallData True
                                       False
                                       False
                                       False
                             )
                  , TileData 233
                             [(680,1040),(720,1040),(680,1080),(720,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (690,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 234
                             [(640,1040),(680,1040),(640,1080),(680,1080)]
                             False
                             (CookieData (Just Cookie)
                                         (650,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  --15
                  , TileData 235
                             [(720,1080),(760,1080),(720,1120),(760,1120)]
                             False
                             (CookieData (Just Cookie)
                                         (730,1090)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 236
                             [(720,1120),(760,1120),(720,1160),(760,1160)]
                             False
                             (CookieData (Just Cookie)
                                         (730,1130)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 237
                             [(720,1160),(760,1160),(720,1200),(760,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (730,1170)
                             )
                             (WallData False
                                       True
                                       False
                                       True
                             )
                  , TileData 238
                             [(680,1160),(720,1160),(680,1200),(720,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (690,1170)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 239
                             [(640,1160),(680,1160),(640,1200),(680,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (650,1170)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 240
                             [(600,1160),(640,1160),(600,1200),(640,1200)]
                             False
                             (CookieData (Just Cookie)
                                         (610,1170)
                             )
                             (WallData True
                                       False
                                       True
                                       False
                             )
                  , TileData 241
                             [(600,1200),(640,1200),(600,1240),(640,1240)]
                             False
                             (CookieData (Just Cookie)
                                         (610,1210)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 242
                             [(600,1240),(640,1240),(600,1280),(640,1280)]
                             False
                             (CookieData (Just Cookie)
                                         (610,1250)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --16
                  , TileData 243
                             [(240,360),(280,360),(240,400),(280,400)]
                             False
                             (CookieData (Just Cookie)
                                         (250,370)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 244
                             [(240,400),(280,400),(240,440),(280,440)]
                             False
                             (CookieData (Just Cookie)
                                         (250,410)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --17
                  , TileData 245
                             [(280,680),(320,680),(280,720),(320,720)]
                             False
                             (CookieData Nothing
                                         (290,690) 
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 246
                             [(320,680),(360,680),(320,720),(360,720)]
                             False
                             (CookieData Nothing
                                         (330,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 247
                             [(360,680),(400,680),(360,720),(400,720)]
                             False
                             (CookieData Nothing
                                         (370,690)
                             )
                             (WallData False
                                       False
                                       False
                                       True
                             )
                  , TileData 248
                             [(360,640),(400,640),(360,680),(400,680)]
                             False
                             (CookieData Nothing
                                         (370,650)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 249
                             [(360,600),(400,600),(360,640),(400,640)]
                             False
                             (CookieData Nothing
                                         (370,610)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 250
                             [(360,560),(400,560),(360,600),(400,600)]
                             False
                             (CookieData Nothing
                                         (370,570)
                             )
                             (WallData True
                                       False
                                       True
                                       False
                             )
                  , TileData 251
                             [(400,560),(440,560),(400,600),(440,600)]
                             False
                             (CookieData Nothing
                                         (410,570)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 252
                             [(440,560),(480,560),(440,600),(480,600)]
                             False
                             (CookieData Nothing
                                         (450,570)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 253
                             [(480,560),(520,560),(480,600),(520,600)]
                             False
                             (CookieData Nothing
                                         (490,570)
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  , TileData 254
                             [(480,520),(520,520),(480,560),(520,560)]
                             False
                             (CookieData Nothing
                                         (490,530)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 255
                             [(480,480),(520,480),(480,520),(520,520)]
                             False
                             (CookieData Nothing
                                         (490,490)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --18
                  , TileData 256
                             [(520,560),(560,560),(520,600),(560,600)]
                             False
                             (CookieData Nothing
                                         (530,570)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 257
                             [(560,560),(600,560),(560,600),(600,600)]
                             False
                             (CookieData Nothing
                                         (570,570)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 258
                             [(600,560),(640,560),(600,600),(640,600)]
                             False
                             (CookieData Nothing
                                         (610,570)
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  , TileData 259
                             [(600,520),(640,520),(600,560),(640,560)]
                             False
                             (CookieData Nothing
                                         (610,530)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 260
                             [(600,480),(640,480),(600,520),(640,520)]
                             False
                             (CookieData Nothing
                                         (610,490)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --19
                  , TileData 261
                             [(640,560),(680,560),(640,600),(680,600)]
                             False
                             (CookieData Nothing
                                         (650,570)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 262
                             [(680,560),(720,560),(680,600),(720,600)]
                             False
                             (CookieData Nothing
                                         (690,570)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 263
                             [(720,560),(760,560),(720,600),(760,600)]
                             False
                             (CookieData Nothing
                                         (730,570)
                             )
                             (WallData True
                                       False
                                       False
                                       True
                             )
                  , TileData 264
                             [(720,600),(760,600),(720,640),(760,640)]
                             False
                             (CookieData Nothing
                                         (730,610)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 265
                             [(720,640),(760,640),(720,680),(760,680)]
                             False
                             (CookieData Nothing
                                         (730,650)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 266
                             [(720,680),(760,680),(720,720),(760,720)]
                             False
                             (CookieData Nothing
                                         (730,690)
                             )
                             (WallData False
                                       False
                                       True
                                       False
                             )
                  , TileData 267
                             [(760,680),(800,680),(760,720),(800,720)]
                             False
                             (CookieData Nothing
                                         (770,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 268
                             [(800,680),(840,680),(800,720),(840,720)]
                             False
                             (CookieData Nothing
                                         (810,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  --20
                  , TileData 269
                             [(720,720),(760,720),(720,760),(760,760)]
                             False
                             (CookieData Nothing
                                         (730,730)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 270
                             [(720,760),(760,760),(720,800),(760,800)]
                             False
                             (CookieData Nothing
                                         (730,770)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 271
                             [(720,800),(760,800),(720,840),(760,840)]
                             False
                             (CookieData Nothing
                                         (730,810)
                             )
                             (WallData False
                                       False
                                       False
                                       True
                             )
                  , TileData 272
                             [(720,840),(760,840),(720,880),(760,880)]
                             False
                             (CookieData Nothing
                                         (730,850)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 273
                             [(720,880),(760,880),(720,920),(760,920)]
                             False
                             (CookieData Nothing
                                         (730,890)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --21
                  , TileData 274
                             [(680,800),(720,800),(680,840),(720,840)]
                             False
                             (CookieData Nothing
                                         (690,810)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 275
                             [(640,800),(680,800),(640,840),(680,840)]
                             False
                             (CookieData Nothing
                                         (650,810)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 276
                             [(600,800),(640,800),(600,840),(640,840)]
                             False
                             (CookieData Nothing
                                         (610,810)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 277
                             [(560,800),(600,800),(560,840),(600,840)]
                             False
                             (CookieData Nothing
                                         (570,810)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 278
                             [(520,800),(560,800),(520,840),(560,840)]
                             False
                             (CookieData Nothing
                                         (530,810)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 279
                             [(480,800),(520,800),(480,840),(520,840)]
                             False
                             (CookieData Nothing
                                         (490,810)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 280
                             [(440,800),(480,800),(440,840),(480,840)]
                             False
                             (CookieData Nothing
                                         (450,810)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 281
                             [(400,800),(440,800),(400,840),(440,840)]
                             False
                             (CookieData Nothing
                                         (410,810)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 282
                             [(360,800),(400,800),(360,840),(400,840)]
                             False
                             (CookieData Nothing
                                         (370,810)
                             )
                             (WallData False
                                       True
                                       False
                                       False
                             )
                  , TileData 283
                             [(360,840),(400,840),(360,880),(400,880)]
                             False
                             (CookieData Nothing
                                         (370,850)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 284
                             [(360,880),(400,880),(360,920),(400,920)]
                             False
                             (CookieData Nothing
                                         (370,890)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --22
                  , TileData 285
                             [(360,760),(400,760),(360,800),(400,800)]
                             False
                             (CookieData Nothing
                                         (370,770)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  , TileData 286
                             [(360,720),(400,720),(360,760),(400,760)]
                             False
                             (CookieData Nothing
                                         (370,730)
                             )
                             (WallData False
                                       False
                                       True
                                       True
                             )
                  --23
                  , TileData 287
                             [(0,680),(40,680),(0,720),(40,720)]
                             False
                             (CookieData Nothing
                                         (10,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 288
                             [(40,680),(80,680),(40,720),(80,720)]
                             False
                             (CookieData Nothing
                                         (50,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 289
                             [(80,680),(120,680),(80,720),(120,720)]
                             False
                             (CookieData Nothing
                                         (90,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 290
                             [(120,680),(160,680),(120,720),(160,720)]
                             False
                             (CookieData Nothing
                                         (130,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 291
                             [(160,680),(200,680),(160,720),(200,720)]
                             False
                             (CookieData Nothing
                                         (170,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 292
                             [(200,680),(240,680),(200,720),(240,720)]
                             False
                             (CookieData Nothing
                                         (210,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  --24
                  , TileData 293
                             [(880,680),(920,680),(880,720),(920,720)]
                             False
                             (CookieData Nothing
                                         (890,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 294
                             [(920,680),(960,680),(920,720),(960,720)]
                             False
                             (CookieData Nothing
                                         (930,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 295
                             [(960,680),(1000,680),(960,720),(1000,720)]
                             False
                             (CookieData Nothing
                                         (970,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 296
                             [(1000,680),(1040,680),(1000,720),(1040,720)]
                             False
                             (CookieData Nothing
                                         (1010,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 297
                             [(1040,680),(1080,680),(1040,720),(1080,720)]
                             False
                             (CookieData Nothing
                                         (1050,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 298
                             [(1080,680),(1120,680),(1080,720),(1120,720)]
                             False
                             (CookieData Nothing
                                         (1090,690)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  --25(STARTING POSITION)
                  , TileData 299
                             [(520,1040),(560,1040),(520,1080),(560,1080)]
                             False
                             (CookieData Nothing
                                         (530,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  , TileData 300
                             [(560,1040),(600,1040),(560,1080),(600,1080)]
                             False
                             (CookieData Nothing
                                         (570,1050)
                             )
                             (WallData True
                                       True
                                       False
                                       False
                             )
                  ]

{----------------}

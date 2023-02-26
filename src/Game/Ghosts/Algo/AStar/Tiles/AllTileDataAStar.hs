module Game.Ghosts.Algo.AStar.Tiles.AllTileDataAStar where

import Graphics.Map.Static.Tiles.Definition
import Game.Ghosts.Algo.AStar.Tiles.Definition

import Data.Sequence


alltiledataastarinit :: Seq TileDataAStar
alltiledataastarinit = fromList $
                       [ --0
                         TileDataAStar 1
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
                                       [2,142]
                                       0
                       , TileDataAStar 2
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
                                       [1,3]
                                       0
                       , TileDataAStar 3
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
                                       [2,4]
                                       0
                       , TileDataAStar 4
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
                                       [3,5]
                                       0
                       , TileDataAStar 5
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
                                       [4,6]
                                       0
                       , TileDataAStar 6
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
                                       [5,7,150]
                                       0
                       , TileDataAStar 7
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
                                       [6,8]
                                       0
                       , TileDataAStar 8
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
                                       [7,9]
                                       0
                       , TileDataAStar 9
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
                                       [8,10]
                                       0
                       , TileDataAStar 10
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
                                       [9,11]
                                       0
                       , TileDataAStar 11
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
                                       [10,12]
                                       0
                       , TileDataAStar 12
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
                                       [11,13]
                                       0
                       , TileDataAStar 13
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
                                       [12,14]
                                       0
                       , TileDataAStar 14
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
                                       [13,15]
                                       0
                       , TileDataAStar 15
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
                                       [14,16]
                                       0
                       , TileDataAStar 16
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
                                       [15,17,155]
                                       0
                       , TileDataAStar 17
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
                                       [16,18]
                                       0
                       , TileDataAStar 18
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
                                       [17,19]
                                       0
                       , TileDataAStar 19
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
                                       [18,20,162]
                                       0
                       , TileDataAStar 20
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
                                       [19,21]
                                       0
                       , TileDataAStar 21
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
                                       [20,22]
                                       0
                       , TileDataAStar 22
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
                                       [21,23]
                                       0
                       , TileDataAStar 23
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
                                       [22,24]
                                       0
                       , TileDataAStar 24
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
                                       [23,25]
                                       0
                       , TileDataAStar 25
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
                                       [24,26]
                                       0
                       , TileDataAStar 26
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
                                       [25,27]
                                       0
                       , TileDataAStar 27
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
                                       [26,28]
                                       0
                       , TileDataAStar 28
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
                                       [27,29]
                                       0
                       , TileDataAStar 29
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
                                       [28,30,170]
                                       0
                       , TileDataAStar 30
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
                                       [29,31]
                                       0
                       , TileDataAStar 31
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
                                       [30,32]
                                       0
                       , TileDataAStar 32
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
                                       [31,33]
                                       0
                       , TileDataAStar 33
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
                                       [32,34]
                                       0
                       , TileDataAStar 34
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
                                       [33,35]
                                       0
                       , TileDataAStar 35
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
                                       [34,36]
                                       0
                       , TileDataAStar 36
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
                                       [35,37]
                                       0
                       , TileDataAStar 37
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
                                       [36,38]
                                       0
                       , TileDataAStar 38
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
                                       [37,39,174]
                                       0
                       , TileDataAStar 39
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
                                       [38,40]
                                       0
                       , TileDataAStar 40
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
                                       [39,41]
                                       0
                       , TileDataAStar 41
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
                                       [40,42]
                                       0
                       , TileDataAStar 42
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
                                       [41,43]
                                       0
                       , TileDataAStar 43
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
                                       [42,44]
                                       0
                       , TileDataAStar 44
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
                                       [43,45]
                                       0
                       , TileDataAStar 45
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
                                       [44,46]
                                       0
                       , TileDataAStar 46
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
                                       [45,47,176]
                                       0
                       , TileDataAStar 47
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
                                       [46,48]
                                       0
                       , TileDataAStar 48
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
                                       [47,49]
                                       0
                       , TileDataAStar 49
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
                                       [48,50]
                                       0
                       , TileDataAStar 50
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
                                       [49,51]
                                       0
                       , TileDataAStar 51
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
                                       [50,52]
                                       0
                       , TileDataAStar 52
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
                                       [51,53,268,293]
                                       0
                       , TileDataAStar 53
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
                                       [52,54]
                                       0
                       , TileDataAStar 54
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
                                       [53,55]
                                       0
                       , TileDataAStar 55
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
                                       [54,56]
                                       0
                       , TileDataAStar 56
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
                                       [55,57]
                                       0
                       , TileDataAStar 57
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
                                       [56,58]
                                       0
                       , TileDataAStar 58
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
                                       [57,59,221,213]
                                       0
                       , TileDataAStar 59
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
                                       [58,60]
                                       0
                       , TileDataAStar 60
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
                                       [59,61]
                                       0
                       , TileDataAStar 61
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
                                       [60,62]
                                       0
                       , TileDataAStar 62
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
                                       [61,63]
                                       0
                       , TileDataAStar 63
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
                                       [62,64]
                                       0
                       , TileDataAStar 64
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
                                       [63,65]
                                       0
                       , TileDataAStar 65
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
                                       [64,66]
                                       0
                       , TileDataAStar 66
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
                                       [65,67]
                                       0
                       , TileDataAStar 67
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
                                       [66,68]
                                       0
                       , TileDataAStar 68
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
                                       [67,69]
                                       0
                       , TileDataAStar 69
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
                                       [68,70]
                                       0
                       , TileDataAStar 70
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
                                       [69,71]
                                       0
                       , TileDataAStar 71
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
                                       [70,72,220]
                                       0
                       , TileDataAStar 72
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
                                       [71,73]
                                       0
                       , TileDataAStar 73
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
                                       [72,74]
                                       0
                       , TileDataAStar 74
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
                                       [73,75]
                                       0
                       , TileDataAStar 75
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
                                       [74,76]
                                       0
                       , TileDataAStar 76
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
                                       [75,77]
                                       0
                       , TileDataAStar 77
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
                                       [76,78]
                                       0
                       , TileDataAStar 78
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
                                       [77,79]
                                       0
                       , TileDataAStar 79
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
                                       [78,80]
                                       0
                       , TileDataAStar 80
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
                                       [79,81]
                                       0
                       , TileDataAStar 81
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
                                       [80,82]
                                       0
                       , TileDataAStar 82
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
                                       [81,83]
                                       0
                       , TileDataAStar 83
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
                                       [82,84]
                                       0
                       , TileDataAStar 84
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
                                       [83,85]
                                       0
                       , TileDataAStar 85
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
                                       [84,86]
                                       0
                       , TileDataAStar 86
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
                                       [85,87]
                                       0
                       , TileDataAStar 87
                                       [(600,1280),(640,1280),(600,1320),(640,1320)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (610,1290)
                                       )
                                       (WallData False
                                                 True
                                                 False
                                                 False
                                       )
                                       [86,88,242]
                                       0
                       , TileDataAStar 88
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
                                       [87,89]
                                       0
                       , TileDataAStar 89
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
                                       [88,90]
                                       0
                       , TileDataAStar 90
                                       [(480,1280),(520,1280),(480,1320),(520,1320)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (490,1290)
                                       )
                                       (WallData False
                                                 True
                                                 False
                                                 False
                                       )
                                       [89,91,212]
                                       0
                       , TileDataAStar 91
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
                                       [90,92]
                                       0
                       , TileDataAStar 92
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
                                       [91,93]
                                       0
                       , TileDataAStar 93
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
                                       [92,94]
                                       0
                       , TileDataAStar 94
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
                                       [93,95]
                                       0
                       , TileDataAStar 95
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
                                       [94,96]
                                       0
                       , TileDataAStar 96
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
                                       [95,97]
                                       0
                       , TileDataAStar 97
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
                                       [96,98]
                                       0
                       , TileDataAStar 98
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
                                       [97,99]
                                       0
                       , TileDataAStar 99
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
                                       [98,100]
                                       0
                       , TileDataAStar 100
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
                                       [99,101]
                                       0
                       , TileDataAStar 101
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
                                       [100,102]
                                       0
                       , TileDataAStar 102
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
                                       [101,103]
                                       0
                       , TileDataAStar 103
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
                                       [102,104]
                                       0
                       , TileDataAStar 104
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
                                       [103,105]
                                       0
                       , TileDataAStar 105
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
                                       [104,106]
                                       0
                       , TileDataAStar 106
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
                                       [105,107,190]
                                       0
                       , TileDataAStar 107 
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
                                       [106,108]
                                       0
                       , TileDataAStar 108
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
                                       [107,109]
                                       0
                       , TileDataAStar 109
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
                                       [108,110]
                                       0
                       , TileDataAStar 110
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
                                       [109,111]
                                       0
                       , TileDataAStar 111
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
                                       [110,112]
                                       0
                       , TileDataAStar 112
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
                                       [111,113]
                                       0
                       , TileDataAStar 113
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
                                       [112,114]
                                       0
                       , TileDataAStar 114
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
                                       [113,115]
                                       0
                       , TileDataAStar 115
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
                                       [114,116]
                                       0
                       , TileDataAStar 116
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
                                       [115,117]
                                       0
                       , TileDataAStar 117
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
                                       [116,118]
                                       0
                       , TileDataAStar 118
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
                                       [117,119]
                                       0
                       , TileDataAStar 119
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
                                       [118,120,191,183]
                                       0
                       , TileDataAStar 120
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
                                       [119,121]
                                       0
                       , TileDataAStar 121
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
                                       [120,122]
                                       0
                       , TileDataAStar 122
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
                                       [121,123]
                                       0
                       , TileDataAStar 123
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
                                       [122,124]
                                       0
                       , TileDataAStar 124
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
                                       [123,125]
                                       0
                       , TileDataAStar 125
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
                                       [124,126,292,245]
                                       0
                       , TileDataAStar 126
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
                                       [125,127]
                                       0
                       , TileDataAStar 127
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
                                       [126,128]
                                       0
                       , TileDataAStar 128
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
                                       [127,129]
                                       0
                       , TileDataAStar 129
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
                                       [128,130]
                                       0
                       , TileDataAStar 130
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
                                       [129,131]
                                       0
                       , TileDataAStar 131
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
                                       [130,132,244]
                                       0
                       , TileDataAStar 132
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
                                       [131,133]
                                       0
                       , TileDataAStar 133
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
                                       [132,134]
                                       0
                       , TileDataAStar 134
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
                                       [133,135]
                                       0
                       , TileDataAStar 135
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
                                       [134,136]
                                       0
                       , TileDataAStar 136
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
                                       [135,137]
                                       0
                       , TileDataAStar 137
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
                                       [136,138]
                                       0
                       , TileDataAStar 138
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
                                       [137,139]
                                       0
                       , TileDataAStar 139
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
                                       [138,140,143]
                                       0
                       , TileDataAStar 140
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
                                       [139,141]
                                       0
                       , TileDataAStar 141
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
                                       [140,142]
                                       0
                       , TileDataAStar 142
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
                                       [141,1]
                                       0
                       --1
                       , TileDataAStar 143
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
                                       [139,144]
                                       0
                       , TileDataAStar 144
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
                                       [143,145]
                                       0
                       , TileDataAStar 145
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
                                       [144,146]
                                       0
                       , TileDataAStar 146
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
                                       [145,147]
                                       0
                       , TileDataAStar 147
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
                                       [146,148,151,243]
                                       0
                       , TileDataAStar 148
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
                                       [147,149]
                                       0
                       , TileDataAStar 149
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
                                       [148,150]
                                       0
                       , TileDataAStar 150
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
                                       [149,6]
                                       0
                       --2
                       , TileDataAStar 151
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
                                       [147,152]
                                       0
                       , TileDataAStar 152
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
                                       [151,153]
                                       0
                       , TileDataAStar 153
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
                                       [152,154,156]
                                       0
                       , TileDataAStar 154
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
                                       [153,155]
                                       0
                       , TileDataAStar 155
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
                                       [154,16]
                                       0
                       --3
                       , TileDataAStar 156
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
                                       [153,157]
                                       0
                       , TileDataAStar 157
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
                                       [156,158]
                                       0
                       , TileDataAStar 158
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
                                       [157,159]
                                       0
                       , TileDataAStar 159
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
                                       [158,160]
                                       0
                       , TileDataAStar 160
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
                                       [159,161]
                                       0
                       , TileDataAStar 161
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
                                       [160,255]
                                       0
                       --4
                       , TileDataAStar 162
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
                                       [19,163]
                                       0 
                       , TileDataAStar 163
                                       [(680,320),(720,320),(680,360),(720,360)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (690,330)
                                       )
                                       (WallData True
                                                 True
                                                 False
                                                 False
                                       )
                                       [162,164]
                                       0
                       , TileDataAStar 164
                                       [(720,320),(760,320),(720,360),(760,360)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (730,330)
                                       )
                                       (WallData True
                                                 False
                                                 False
                                                 False
                                       )
                                       [163,165,177]
                                       0
                       , TileDataAStar 165
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
                                       [164,166]
                                       0
                       , TileDataAStar 166
                                       [(800,320),(840,320),(800,360),(840,360)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (810,330)
                                       )
                                       (WallData True
                                                 True
                                                 False
                                                 False
                                       )
                                       [165,167]
                                       0
                        , TileDataAStar 167
                                        [(840,320),(880,320),(840,360),(880,360)]
                                        False
                                        (CookieData (Just Cookie)
                                                    (850,330)
                                        )
                                        (WallData False
                                                  False
                                                  False
                                                  False
                                        )
                                        [166,168,171,175]
                                        0
                       , TileDataAStar 168
                                       [(840,280),(880,280),(840,320),(880,320)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (850,290)
                                       )
                                       (WallData False
                                                 False
                                                 True
                                                 True
                                       )
                                       [167,169]
                                       0
                       , TileDataAStar 169
                                       [(840,240),(880,240),(840,280),(880,280)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (850,250)
                                       )
                                       (WallData False
                                                 False
                                                 True
                                                 True
                                       )
                                       [168,170]
                                       0
                       , TileDataAStar 170
                                       [(840,200),(880,200),(840,240),(880,240)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (850,210)
                                       )
                                       (WallData False
                                                 False
                                                 True
                                                 True
                                       )
                                       [169,29]
                                       0
                       --5
                       , TileDataAStar 171
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
                                       [167,172]
                                       0
                       , TileDataAStar 172
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
                                       [171,173]
                                       0
                       , TileDataAStar 173
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
                                       [172,174]
                                       0
                       , TileDataAStar 174
                                       [(1000,320),(1040,320),(1000,360),(1040,360)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (1010,330)
                                       )
                                       (WallData True
                                                 True
                                                 False
                                                 False
                                       )
                                       [173,38]
                                       0
                       --6
                       , TileDataAStar 175
                                       [(840,360),(880,360),(840,400),(880,400)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (850,370)
                                       )
                                       (WallData False
                                                 False
                                                 True
                                                 True
                                       )
                                       [167,176]
                                       0
                       , TileDataAStar 176
                                       [(840,400),(880,400),(840,440),(880,440)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (850,410)
                                       )
                                       (WallData False
                                                 False
                                                 True
                                                 True
                                       )
                                       [175,46]
                                       0
                       --7
                       , TileDataAStar 177
                                       [(720,360),(760,360),(720,400),(760,400)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (730,370)
                                       )
                                       (WallData False
                                                 False
                                                 True
                                                 True
                                       )
                                       [164,178]
                                       0
                       , TileDataAStar 178
                                       [(720,400),(760,400),(720,440),(760,440)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (730,410)
                                       )
                                       (WallData False
                                                 False
                                                 True
                                                 True
                                       )
                                       [177,179]
                                       0
                       , TileDataAStar 179
                                       [(720,440),(760,440),(720,480),(760,480)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (730,450)
                                       )
                                       (WallData False
                                                 True
                                                 False
                                                 True
                                       )
                                       [178,180]
                                       0
                       , TileDataAStar 180
                                       [(680,440),(720,440),(680,480),(720,480)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (690,450)
                                       )
                                       (WallData True
                                                 True
                                                 False
                                                 False
                                       )
                                       [179,181]
                                       0
                       , TileDataAStar 181
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
                                       [180,182]
                                       0
                       , TileDataAStar 182
                                       [(600,440),(640,440),(600,480),(640,480)]
                                       False
                                       (CookieData (Just Cookie)
                                                   (610,450)
                                       )
                                       (WallData True
                                                 False
                                                 True
                                                 False
                                       )
                                       [181,260]
                                       0
                       --8
                       , TileDataAStar 183
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
                                       [119,184]
                                       0
                       , TileDataAStar 184
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
                                       [183,185]
                                       0
                       , TileDataAStar 185
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
                                       [184,186,200]
                                       0
                       , TileDataAStar 186
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
                                       [185,187]
                                       0
                       , TileDataAStar 187
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
                                       [186,188]
                                       0
                       , TileDataAStar 188
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
                                       [187,189]
                                       0
                       , TileDataAStar 189
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
                                       [188,190]
                                       0
                       , TileDataAStar 190
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
                                       [189,106]
                                       0
                       --9
                       , TileDataAStar 191
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
                                       [119,192]
                                       0
                       , TileDataAStar 192
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
                                       [191,193]
                                       0
                       , TileDataAStar 193
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
                                       [192,194,284]
                                       0
                       , TileDataAStar 194
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
                                       [193,195]
                                       0
                       , TileDataAStar 195
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
                                       [194,196]
                                       0
                       , TileDataAStar 196
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
                                       [195,197]
                                       0
                       , TileDataAStar 197
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
                                       [196,198]
                                       0
                       , TileDataAStar 198
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
                                       [197,199]
                                       0
                       , TileDataAStar 199
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
                                       [198,299,204]
                                       0
                       --10
                       , TileDataAStar 200
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
                                       [185,201]
                                       0
                       , TileDataAStar 201
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
                                       [200,202]
                                       0
                       , TileDataAStar 202
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
                                       [201,203,205]
                                       0
                       , TileDataAStar 203
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
                                       [202,204]
                                       0
                       , TileDataAStar 204
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
                                       [203,199]
                                       0
                       --11
                       , TileDataAStar 205
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
                                       [202,206]
                                       0
                       , TileDataAStar 206
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
                                       [205,207]
                                       0
                       , TileDataAStar 207
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
                                       [206,208]
                                       0
                       , TileDataAStar 208
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
                                       [207,209]
                                       0
                       , TileDataAStar 209
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
                                       [208,210]
                                       0
                       , TileDataAStar 210
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
                                       [209,211]
                                       0
                       , TileDataAStar 211
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
                                       [210,212]
                                       0
                       , TileDataAStar 212
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
                                       [211,90]
                                       0
                       --12
                       , TileDataAStar 213
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
                                       [58,214]
                                       0
                       , TileDataAStar 214
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
                                       [213,215]
                                       0
                       , TileDataAStar 215
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
                                       [214,216,230]
                                       0
                       , TileDataAStar 216
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
                                       [215,217]
                                       0
                       , TileDataAStar 217
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
                                       [216,218]
                                       0
                       , TileDataAStar 218
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
                                       [217,219]
                                       0
                       , TileDataAStar 219
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
                                       [218,220]
                                       0
                       , TileDataAStar 220
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
                                       [219,71]
                                       0
                       --13
                       , TileDataAStar 221
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
                                       [58,222]
                                       0
                       , TileDataAStar 222
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
                                       [221,223]
                                       0
                       , TileDataAStar 223
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
                                       [222,224,273]
                                       0
                       , TileDataAStar 224
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
                                       [223,225]
                                       0
                       , TileDataAStar 225
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
                                       [224,226]
                                       0
                       , TileDataAStar 226
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
                                       [225,227]
                                       0
                       , TileDataAStar 227
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
                                       [226,228]
                                       0
                       , TileDataAStar 228
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
                                       [227,229]
                                       0
                       , TileDataAStar 229
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
                                       [228,234,300]
                                       0
                       --14
                       , TileDataAStar 230
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
                                       [215,231]
                                       0
                       , TileDataAStar 231
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
                                       [230,232]
                                       0
                       , TileDataAStar 232
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
                                       [231,233,235]
                                       0
                       , TileDataAStar 233
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
                                       [232,234]
                                       0
                       , TileDataAStar 234
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
                                       [233,229]
                                       0
                       --15
                       , TileDataAStar 235
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
                                       [232,236]
                                       0
                       , TileDataAStar 236
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
                                       [235,237]
                                       0
                       , TileDataAStar 237
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
                                       [236,238]
                                       0
                       , TileDataAStar 238
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
                                       [237,239]
                                       0
                       , TileDataAStar 239
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
                                       [238,240]
                                       0
                       , TileDataAStar 240
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
                                       [239,241]
                                       0
                       , TileDataAStar 241
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
                                       [240,242]
                                       0
                       , TileDataAStar 242
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
                                       [241,87]
                                       0
                       --16
                       , TileDataAStar 243
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
                                       [147,244]
                                       0
                       , TileDataAStar 244
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
                                       [243,131]
                                       0
                       --17
                       , TileDataAStar 245
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
                                       [125,246]
                                       0
                       , TileDataAStar 246
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
                                       [245,247]
                                       0
                       , TileDataAStar 247
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
                                       [246,248,286]
                                       0
                       , TileDataAStar 248
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
                                       [247,249]
                                       0
                       , TileDataAStar 249
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
                                       [248,250]
                                       0
                       , TileDataAStar 250
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
                                       [249,251]
                                       0
                       , TileDataAStar 251
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
                                       [250,252]
                                       0
                       , TileDataAStar 252
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
                                       [251,253]
                                       0
                       , TileDataAStar 253
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
                                       [252,254,256]
                                       0
                       , TileDataAStar 254
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
                                       [253,255]
                                       0
                       , TileDataAStar 255
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
                                       [254,161]
                                       0
                       --18
                       , TileDataAStar 256
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
                                       [253,257]
                                       0
                       , TileDataAStar 257
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
                                       [256,258]
                                       0
                       , TileDataAStar 258
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
                                       [257,259,261]
                                       0
                       , TileDataAStar 259
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
                                       [258,260]
                                       0
                       , TileDataAStar 260
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
                                       [259,182]
                                       0
                       --19
                       , TileDataAStar 261
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
                                       [258,262]
                                       0
                       , TileDataAStar 262
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
                                       [261,263]
                                       0
                       , TileDataAStar 263
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
                                       [262,264]
                                       0
                       , TileDataAStar 264
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
                                       [263,265]
                                       0
                       , TileDataAStar 265
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
                                       [264,266]
                                       0
                       , TileDataAStar 266
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
                                       [265,267,269]
                                       0
                       , TileDataAStar 267
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
                                       [266,268]
                                       0
                       , TileDataAStar 268
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
                                       [267,52]
                                       0
                       --20
                       , TileDataAStar 269
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
                                       [266,270]
                                       0
                       , TileDataAStar 270
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
                                       [269,271]
                                       0
                       , TileDataAStar 271
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
                                       [270,272,274]
                                       0
                       , TileDataAStar 272
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
                                       [271,273]
                                       0
                       , TileDataAStar 273
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
                                       [272,223]
                                       0
                       --21
                       , TileDataAStar 274
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
                                       [271,275]
                                       0
                       , TileDataAStar 275
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
                                       [274,276]
                                       0
                       , TileDataAStar 276
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
                                       [275,277]
                                       0
                       , TileDataAStar 277
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
                                       [276,278]
                                       0
                       , TileDataAStar 278
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
                                       [277,279]
                                       0
                       , TileDataAStar 279
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
                                       [278,280]
                                       0
                       , TileDataAStar 280
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
                                       [279,281]
                                       0
                       , TileDataAStar 281
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
                                       [280,282]
                                       0
                       , TileDataAStar 282
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
                                       [281,283,285]
                                       0
                       , TileDataAStar 283
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
                                       [282,284]
                                       0
                       , TileDataAStar 284
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
                                       [283,193]
                                       0
                       --22
                       , TileDataAStar 285
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
                                       [282,286]
                                       0
                       , TileDataAStar 286
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
                                       [285,247]
                                       0
                       --23
                       , TileDataAStar 287
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
                                       [298,288]
                                       0
                       , TileDataAStar 288
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
                                       [287,289]
                                       0
                       , TileDataAStar 289
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
                                       [288,290]
                                       0
                       , TileDataAStar 290
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
                                       [289,291]
                                       0
                       , TileDataAStar 291
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
                                       [290,292]
                                       0
                       , TileDataAStar 292
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
                                       [291,125]
                                       0
                       --24
                       , TileDataAStar 293
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
                                       [52,294]
                                       0
                       , TileDataAStar 294
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
                                       [293,295]
                                       0
                       , TileDataAStar 295
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
                                       [294,296]
                                       0
                       , TileDataAStar 296
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
                                       [295,297]
                                       0
                       , TileDataAStar 297
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
                                       [296,298]
                                       0
                       , TileDataAStar 298
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
                                       [297,287]
                                       0
                       --25(STARTING POSITION)
                       , TileDataAStar 299
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
                                       [199,300]
                                       0
                       , TileDataAStar 300
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
                                       [299,229]
                                       0
                       ]

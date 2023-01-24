module Graphics.Map.Dynamic.Cookies.AllCookies where

import Graphics.Map.Dynamic.Cookies.Common

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up all of the cookies on the map.-}

allcookiesinit :: IO Picture
allcookiesinit = do
  cookie1 <- createCookie (50,170)
  cookie2 <- createCookie (90,170)
  cookie3 <- createCookie (130,170)
  cookie4 <- createCookie (170,170)
  cookie5 <- createCookie (210,170)
  cookie6 <- createCookie (250,170)
  cookie7 <- createCookie (290,170)
  cookie8 <- createCookie (330,170)
  cookie9 <- createCookie (370,170)
  cookie10 <- createCookie (410,170)
  cookie11 <- createCookie (450,170)
  cookie12 <- createCookie (490,170)
  cookie13 <- createCookie (490,210)
  cookie14 <- createCookie (490,250)
  cookie15 <- createCookie (490,290)
  cookie16 <- createCookie (490,330)
  cookie17 <- createCookie (530,330)
  cookie18 <- createCookie (570,330)
  cookie19 <- createCookie (610,330)
  cookie20 <- createCookie (610,290)
  cookie21 <- createCookie (610,250)
  cookie22 <- createCookie (610,210)
  cookie23 <- createCookie (610,170)
  cookie24 <- createCookie (650,170)
  cookie25 <- createCookie (690,170)
  cookie26 <- createCookie (730,170)
  cookie27 <- createCookie (770,170)
  cookie28 <- createCookie (810,170)
  cookie29 <- createCookie (850,170)
  cookie30 <- createCookie (890,170)
  cookie31 <- createCookie (930,170)
  cookie32 <- createCookie (970,170)
  cookie33 <- createCookie (1010,170)
  cookie34 <- createCookie (1050,170)
  cookie35 <- createCookie (1050,210)
  cookie36 <- createCookie (1050,290)
  cookie37 <- createCookie (1050,330)
  cookie38 <- createCookie (1050,370)
  cookie39 <- createCookie (1050,410)
  cookie40 <- createCookie (1050,450)
  cookie41 <- createCookie (1010,450)
  cookie42 <- createCookie (970,450)
  cookie43 <- createCookie (930,450)
  cookie44 <- createCookie (890,450)
  cookie45 <- createCookie (850,450)
  cookie46 <- createCookie (850,490)
  cookie47 <- createCookie (850,530)
  cookie48 <- createCookie (850,570)
  cookie49 <- createCookie (850,610)
  cookie50 <- createCookie (850,650)
  cookie51 <- createCookie (850,690)
  cookie52 <- createCookie (850,730)
  cookie53 <- createCookie (850,770)
  cookie54 <- createCookie (850,810)
  cookie55 <- createCookie (850,850)
  cookie56 <- createCookie (850,890)
  cookie57 <- createCookie (850,930)
  cookie58 <- createCookie (890,930)
  cookie59 <- createCookie (930,930)
  cookie60 <- createCookie (970,930)
  cookie61 <- createCookie (1010,930)
  cookie62 <- createCookie (1050,930)
  cookie63 <- createCookie (1050,970)
  cookie64 <- createCookie (1050,1010)
  cookie65 <- createCookie (1010,1050)
  cookie66 <- createCookie (970,1050)
  cookie67 <- createCookie (970,1090)
  cookie68 <- createCookie (970,1130)
  cookie69 <- createCookie (970,1170)
  cookie70 <- createCookie (1010,1170)
  cookie71 <- createCookie (1050,1170)
  cookie72 <- createCookie (1050,1210)
  cookie73 <- createCookie (1050,1250)
  cookie74 <- createCookie (1050,1290)
  cookie75 <- createCookie (1010,1290)
  cookie76 <- createCookie (970,1290)
  cookie77 <- createCookie (930,1290)
  cookie78 <- createCookie (890,1290)
  cookie79 <- createCookie (850,1290)
  cookie80 <- createCookie (810,1290)
  cookie81 <- createCookie (770,1290)
  cookie82 <- createCookie (730,1290)
  cookie83 <- createCookie (690,1290)
  cookie84 <- createCookie (650,1290)
  cookie85 <- createCookie (610,1290)
  cookie86 <- createCookie (570,1290)
  cookie87 <- createCookie (530,1290)
  cookie88 <- createCookie (490,1290)
  cookie89 <- createCookie (450,1290)
  cookie90 <- createCookie (410,1290)
  cookie91 <- createCookie (370,1290)
  cookie92 <- createCookie (330,1290)
  cookie93 <- createCookie (290,1290)
  cookie94 <- createCookie (250,1290)
  cookie95 <- createCookie (210,1290)
  cookie96 <- createCookie (170,1290)
  cookie97 <- createCookie (130,1290)
  cookie98 <- createCookie (90,1290)
  cookie99 <- createCookie (50,1290)
  cookie100 <- createCookie (50,1250)
  cookie101 <- createCookie (50,1210)
  cookie102 <- createCookie (50,1170)
  cookie103 <- createCookie (90,1170)
  cookie104 <- createCookie (130,1170)
  cookie105 <- createCookie (130,1130)
  cookie106 <- createCookie (130,1090)
  cookie107 <- createCookie (130,1050)
  cookie108 <- createCookie (90,1050)
  cookie109 <- createCookie (50,1010)
  cookie110 <- createCookie (50,970)
  cookie111 <- createCookie (50,930)
  cookie112 <- createCookie (90,930)
  cookie113 <- createCookie (130,930)
  cookie114 <- createCookie (170,930)
  cookie115 <- createCookie (210,930)
  cookie116 <- createCookie (250,930)
  cookie117 <- createCookie (250,890)
  cookie118 <- createCookie (250,850)
  cookie119 <- createCookie (250,810)
  cookie120 <- createCookie (250,770)
  cookie121 <- createCookie (250,730)
  cookie122 <- createCookie (250,690)
  cookie123 <- createCookie (250,650)
  cookie124 <- createCookie (250,610)
  cookie125 <- createCookie (250,570)
  cookie126 <- createCookie (250,530)
  cookie127 <- createCookie (250,490)
  cookie128 <- createCookie (250,450)
  cookie129 <- createCookie (210,450)
  cookie130 <- createCookie (170,450)
  cookie131 <- createCookie (130,450)
  cookie132 <- createCookie (90,450)
  cookie133 <- createCookie (50,450)
  cookie134 <- createCookie (50,410)
  cookie135 <- createCookie (50,370)
  cookie136 <- createCookie (50,330)
  cookie137 <- createCookie (50,290)
  cookie138 <- createCookie (50,210)
  return $ Pictures [ cookie1
                    , cookie2
                    , cookie3
                    , cookie4
                    , cookie5
                    , cookie6
                    , cookie7
                    , cookie8
                    , cookie9
                    , cookie10
                    , cookie11
                    , cookie12
                    , cookie13
                    , cookie14
                    , cookie15
                    , cookie16
                    , cookie17
                    , cookie18
                    , cookie19
                    , cookie20
                    , cookie21
                    , cookie22
                    , cookie23
                    , cookie24
                    , cookie25
                    , cookie26
                    , cookie27
                    , cookie28
                    , cookie29
                    , cookie30
                    , cookie31
                    , cookie32
                    , cookie33
                    , cookie34
                    , cookie35
                    , cookie36
                    , cookie37
                    , cookie38
                    , cookie39
                    , cookie40
                    , cookie41
                    , cookie42
                    , cookie43
                    , cookie44
                    , cookie45
                    , cookie46
                    , cookie47
                    , cookie48
                    , cookie49
                    , cookie50
                    , cookie51
                    , cookie52
                    , cookie53
                    , cookie54
                    , cookie55
                    , cookie56
                    , cookie57
                    , cookie58
                    , cookie59
                    , cookie60
                    , cookie61
                    , cookie62
                    , cookie63
                    , cookie64
                    , cookie65
                    , cookie66
                    , cookie67
                    , cookie68
                    , cookie69
                    , cookie70
                    , cookie71
                    , cookie72
                    , cookie73
                    , cookie74
                    , cookie75
                    , cookie76
                    , cookie77
                    , cookie78
                    , cookie79
                    , cookie80
                    , cookie81
                    , cookie82
                    , cookie83
                    , cookie84
                    , cookie85
                    , cookie86
                    , cookie87
                    , cookie88
                    , cookie89
                    , cookie90
                    , cookie91
                    , cookie92
                    , cookie93
                    , cookie94
                    , cookie95
                    , cookie96
                    , cookie97
                    , cookie98
                    , cookie99
                    , cookie100
                    , cookie101
                    , cookie102
                    , cookie103
                    , cookie104
                    , cookie105
                    , cookie106
                    , cookie107
                    , cookie108
                    , cookie109
                    , cookie110
                    , cookie111
                    , cookie112
                    , cookie113
                    , cookie114
                    , cookie115
                    , cookie116
                    , cookie117
                    , cookie118
                    , cookie119
                    , cookie120
                    , cookie121
                    , cookie122
                    , cookie123
                    , cookie124
                    , cookie125
                    , cookie126
                    , cookie127
                    , cookie128
                    , cookie129
                    , cookie130
                    , cookie131
                    , cookie132
                    , cookie133
                    , cookie134
                    , cookie135
                    , cookie136
                    , cookie137
                    , cookie138
                    ]

{-----------------------------------------------------------------}

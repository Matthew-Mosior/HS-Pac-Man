module Graphics.Map.Dynamic.Cookies.InitialCookies where


import Data.Sequence as DS
import Data.Foldable (toList)
import Data.Traversable

import Graphics.Map.Dynamic.Cookies.Common
import Graphics.Map.Dynamic.Cookies.Definition

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up all of the cookies on the map.-}

allcookiesinit :: Seq CookieDrawData
               -> IO Picture
allcookiesinit allcookiedata = do
  --Grab and create cookies.
  let cookies = fmap cookiedrawcoordinates $ 
	        DS.filter (\x -> (cookiedrawtype x) == Cookie
		          )
                allcookiedata
  allcookiescreated <- sequence $ fmap createCookie cookies
  --Grab and create large cookies.
  let largecookies = fmap cookiedrawcoordinates $
	             DS.filter (\x -> (cookiedrawtype x) == LargeCookie
                               )
                     allcookiedata
  alllargecookiescreated <- sequence $ fmap createCookie largecookies
  return $ Pictures $
	   toList   $
           alllargecookiescreated
	   ><
           allcookiescreated

  {-
  --Large Cookies.
  toprightlc <- createLargeCookie (50,251)
  bottomrightlc <- createLargeCookie (50,1051)
  topleftlc <- createLargeCookie (1050,251)
  bottomleftlc <- createLargeCookie (1050,1051)
  --0
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
  --1
  cookie139 <- createCookie (1010,330)
  cookie140 <- createCookie (970,330)
  cookie141 <- createCookie (930,330)
  cookie142 <- createCookie (890,330)
  cookie143 <- createCookie (850,330)
  cookie144 <- createCookie (850,290)
  cookie145 <- createCookie (850,250)
  cookie146 <- createCookie (850,210)
  --2
  cookie147 <- createCookie (810,330)
  cookie148 <- createCookie (770,330)
  cookie149 <- createCookie (730,330)
  cookie150 <- createCookie (690,330)
  cookie151 <- createCookie (650,330)
  --3
  cookie152 <- createCookie (730,370)
  cookie153 <- createCookie (730,410)
  cookie154 <- createCookie (730,450)
  cookie155 <- createCookie (690,450)
  cookie156 <- createCookie (650,450)
  cookie157 <- createCookie (610,450)
  --4
  cookie158 <- createCookie (450,330)
  cookie159 <- createCookie (410,330)
  cookie160 <- createCookie (370,330)
  cookie161 <- createCookie (330,330)
  cookie162 <- createCookie (290,330)
  cookie163 <- createCookie (250,330)
  cookie164 <- createCookie (250,290)
  cookie165 <- createCookie (250,250)
  cookie166 <- createCookie (250,210)
  --5
  cookie167 <- createCookie (210,330)
  cookie168 <- createCookie (170,330)
  cookie169 <- createCookie (130,330)
  cookie170 <- createCookie (90,330)
  --6
  cookie171 <- createCookie (250,370)
  cookie172 <- createCookie (250,410)
  --7
  cookie173 <- createCookie (370,370)
  cookie174 <- createCookie (370,410)
  cookie175 <- createCookie (370,450)
  cookie176 <- createCookie (410,450)
  cookie177 <- createCookie (450,450)
  cookie178 <- createCookie (490,450)
  --8
  cookie179 <- createCookie (850,970)
  cookie180 <- createCookie (850,1010)
  cookie181 <- createCookie (850,1050)
  cookie182 <- createCookie (850,1090)
  cookie183 <- createCookie (850,1130)
  cookie184 <- createCookie (850,1170)
  cookie185 <- createCookie (890,1170)
  cookie186 <- createCookie (930,1170)
  --9
  cookie187 <- createCookie (810,930)
  cookie188 <- createCookie (770,930)
  cookie189 <- createCookie (730,930)
  cookie190 <- createCookie (690,930)
  cookie191 <- createCookie (650,930)
  cookie192 <- createCookie (610,930)
  cookie193 <- createCookie (610,970)
  cookie194 <- createCookie (610,1010)
  cookie195 <- createCookie (610,1050)
  --10
  cookie196 <- createCookie (810,1050)
  cookie197 <- createCookie (770,1050)
  cookie198 <- createCookie (730,1050)
  cookie199 <- createCookie (690,1050)
  cookie200 <- createCookie (650,1050)
  --11
  cookie201 <- createCookie (730,1090)
  cookie202 <- createCookie (730,1130)
  cookie203 <- createCookie (730,1170)
  cookie204 <- createCookie (690,1170)
  cookie205 <- createCookie (650,1170)
  cookie206 <- createCookie (610,1170)
  cookie207 <- createCookie (610,1210)
  cookie208 <- createCookie (610,1250)
  --12
  cookie209 <- createCookie (250,970)
  cookie210 <- createCookie (250,1010)
  cookie211 <- createCookie (250,1050)
  cookie212 <- createCookie (250,1090)
  cookie213 <- createCookie (250,1130)
  cookie214 <- createCookie (250,1170)
  cookie215 <- createCookie (210,1170)
  cookie216 <- createCookie (170,1170)
  --13
  cookie217 <- createCookie (290,930)
  cookie218 <- createCookie (330,930)
  cookie219 <- createCookie (370,930)
  cookie220 <- createCookie (410,930)
  cookie221 <- createCookie (450,930)
  cookie222 <- createCookie (490,930)
  cookie223 <- createCookie (490,970)
  cookie224 <- createCookie (490,1010)
  cookie225 <- createCookie (490,1050)
  --14
  cookie226 <- createCookie (290,1050)
  cookie227 <- createCookie (330,1050)
  cookie228 <- createCookie (370,1050)
  cookie229 <- createCookie (410,1050)
  cookie230 <- createCookie (450,1050)
  --15
  cookie231 <- createCookie (370,1090)
  cookie232 <- createCookie (370,1130)
  cookie233 <- createCookie (370,1170)
  cookie234 <- createCookie (410,1170)
  cookie235 <- createCookie (450,1170)
  cookie236 <- createCookie (490,1170)
  cookie237 <- createCookie (490,1210)
  cookie238 <- createCookie (490,1250)
  --16
  cookie239 <- createCookie (850,370)
  cookie240 <- createCookie (850,410)
  return $ Pictures [ --Large cookies.
                      toprightlc
                    , bottomrightlc
                    , topleftlc
                    , bottomleftlc
                      --0
                    , cookie1
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
                    --1
                    , cookie139
                    , cookie140
                    , cookie141
                    , cookie142
                    , cookie143
                    , cookie144
                    , cookie145
                    , cookie146
                    --2
                    , cookie147
                    , cookie148
                    , cookie149
                    , cookie150
                    , cookie151
                    --3
                    , cookie152
                    , cookie153
                    , cookie154
                    , cookie155
                    , cookie156
                    , cookie157
                    --4
                    , cookie158
                    , cookie159
                    , cookie160
                    , cookie161
                    , cookie162
                    , cookie163
                    , cookie164
                    , cookie165
                    , cookie166
                    --5
                    , cookie167
                    , cookie168
                    , cookie169
                    , cookie170
                    --6
                    , cookie171
                    , cookie172
                    --7
                    , cookie173
                    , cookie174
                    , cookie175
                    , cookie176
                    , cookie177
                    , cookie178
                    --8
                    , cookie179
                    , cookie180
                    , cookie181
                    , cookie182
                    , cookie183
                    , cookie184
                    , cookie185
                    , cookie186
                    --9
                    , cookie187
                    , cookie188
                    , cookie189
                    , cookie190
                    , cookie191
                    , cookie192
                    , cookie193
                    , cookie194
                    , cookie195
                    --10
                    , cookie196
                    , cookie197
                    , cookie198
                    , cookie199
                    , cookie200
                    --11
                    , cookie201
                    , cookie202
                    , cookie203
                    , cookie204
                    , cookie205
                    , cookie206
                    , cookie207
                    , cookie208
                    --12
                    , cookie209
                    , cookie210
                    , cookie211
                    , cookie212
                    , cookie213
                    , cookie214
                    , cookie215
                    , cookie216
                    --13
                    , cookie217
                    , cookie218
                    , cookie219
                    , cookie220
                    , cookie221
                    , cookie222
                    , cookie223
                    , cookie224
                    , cookie225
                    --14
                    , cookie226
                    , cookie227
                    , cookie228
                    , cookie229
                    , cookie230
                    --15
                    , cookie231
                    , cookie232
                    , cookie233
                    , cookie234
                    , cookie235
                    , cookie236
                    , cookie237
                    , cookie238
                    --16
                    , cookie239
                    , cookie240
                    ]
  -}

{-----------------------------------------------------------------}

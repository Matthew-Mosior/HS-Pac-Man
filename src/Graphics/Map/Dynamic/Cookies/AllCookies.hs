module Graphics.Map.Dynamic.Cookies.AllCookies where


import Graphics.Map.Dynamic.Cookies.Definition

import Data.Sequence as Seq


{-All cookie data.-}

allcookiedatainit :: Seq CookieDrawData
allcookiedatainit = fromList $
                    [ --Large Cookies
                      --Top right
                      CookieDrawData 241
                                     LargeCookie
                                     (50,251)
                      --Bottom right
                    , CookieDrawData 242
                                     LargeCookie
                                     (50,1051)

                      --Top left
                    , CookieDrawData 243
                                     LargeCookie
                                     (1050,251)

                      --Bottom left
                    , CookieDrawData 244
                                     LargeCookie
                                     (1050,1051)
                      --0
                    , CookieDrawData 1 
                                     Cookie
                                     (50,170)

                    , CookieDrawData 2 
                                     Cookie
                                     (90,170)

                    , CookieDrawData 3 
                                     Cookie
                                     (130,170)

                    , CookieDrawData 4 
                                     Cookie
                                     (170,170)

                    , CookieDrawData 5 
                                     Cookie
                                     (210,170)

                    , CookieDrawData 6 
                                     Cookie
                                     (250,170)

                    , CookieDrawData 7 
                                     Cookie
                                     (290,170)

                    , CookieDrawData 8 
                                     Cookie
                                     (330,170)

                    , CookieDrawData 9 
                                     Cookie
                                     (370,170)

                    , CookieDrawData 10 
                                     Cookie
                                     (410,170)

                    , CookieDrawData 11 
                                     Cookie
                                     (450,170)

                    , CookieDrawData 12 
                                     Cookie
                                     (490,170)

                    , CookieDrawData 13 
                                     Cookie
                                     (490,210)

                    , CookieDrawData 14 
                                       Cookie
                                       (490,250)

                    , CookieDrawData 15 
                                       Cookie
                                       (490,290)

                    , CookieDrawData 16 
                                       Cookie
                                       (490,330)

                    , CookieDrawData 17 
                                       Cookie
                                       (530,330)

                    , CookieDrawData 18 
                                       Cookie
                                       (570,330)

                    , CookieDrawData 19 
                                       Cookie
                                       (610,330)

                    , CookieDrawData 20 
                                       Cookie
                                       (610,290)

                    , CookieDrawData 21 
                                       Cookie
                                       (610,250)

                    , CookieDrawData 22 
                                       Cookie
                                       (610,210)

                    , CookieDrawData 23 
                                       Cookie
                                       (610,170)

                    , CookieDrawData 24 
                                       Cookie
                                       (650,170)

                    , CookieDrawData 25 
                                       Cookie
                                       (690,170)

                    , CookieDrawData 26 
                                       Cookie
                                       (730,170)

                    , CookieDrawData 27 
                                       Cookie
                                       (770,170)

                    , CookieDrawData 28 
                                       Cookie
                                       (810,170)

                    , CookieDrawData 29 
                                       Cookie
                                       (850,170)

                    , CookieDrawData 30 
                                       Cookie
                                       (890,170)

                    , CookieDrawData 31 
                                       Cookie
                                       (930,170)

                    , CookieDrawData 32 
                                       Cookie
                                       (970,170)

                    , CookieDrawData 33 
                                       Cookie
                                       (1010,170)

                    , CookieDrawData 34 
                                       Cookie
                                       (1050,170)

                    , CookieDrawData 35 
                                       Cookie
                                       (1050,210)

                    , CookieDrawData 36 
                                       Cookie
                                       (1050,290)

                    , CookieDrawData 37 
                                       Cookie
                                       (1050,330)

                    , CookieDrawData 38 
                                       Cookie
                                       (1050,370)

                    , CookieDrawData 39 
                                       Cookie
                                       (1050,410)

                    , CookieDrawData 40 
                                       Cookie
                                       (1050,450)

                    , CookieDrawData 41 
                                       Cookie
                                       (1010,450)

                    , CookieDrawData 42 
                                       Cookie
                                       (970,450)

                    , CookieDrawData 43 
                                       Cookie
                                       (930,450)

                    , CookieDrawData 44 
                                       Cookie
                                       (890,450)

                    , CookieDrawData 45 
                                       Cookie
                                       (850,450)

                    , CookieDrawData 46 
                                       Cookie
                                       (850,490)

                    , CookieDrawData 47 
                                       Cookie
                                       (850,530)

                    , CookieDrawData 48 
                                       Cookie
                                       (850,570)

                    , CookieDrawData 49 
                                       Cookie
                                       (850,610)

                    , CookieDrawData 50 
                                       Cookie
                                       (850,650)

                    , CookieDrawData 51 
                                       Cookie
                                       (850,690)

                    , CookieDrawData 52 
                                       Cookie
                                       (850,730)

                    , CookieDrawData 53 
                                       Cookie
                                       (850,770)

                    , CookieDrawData 54 
                                       Cookie
                                       (850,810)

                    , CookieDrawData 55 
                                       Cookie
                                       (850,850)

                    , CookieDrawData 56 
                                       Cookie
                                       (850,890)

                    , CookieDrawData 57 
                                       Cookie
                                       (850,930)

                    , CookieDrawData 58 
                                       Cookie
                                       (890,930)

                    , CookieDrawData 59 
                                       Cookie
                                       (930,930)

                    , CookieDrawData 60 
                                       Cookie
                                       (970,930)

                    , CookieDrawData 61 
                                       Cookie
                                       (1010,930)

                    , CookieDrawData 62 
                                       Cookie
                                       (1050,930)

                    , CookieDrawData 63 
                                       Cookie
                                       (1050,970)

                    , CookieDrawData 64 
                                       Cookie
                                       (1050,1010)

                    , CookieDrawData 65 
                                       Cookie
                                       (1010,1050)

                    , CookieDrawData 66 
                                       Cookie
                                       (970,1050)

                    , CookieDrawData 67 
                                       Cookie
                                       (970,1090)

                    , CookieDrawData 68 
                                       Cookie
                                       (970,1130)

                    , CookieDrawData 69 
                                       Cookie
                                       (970,1170)

                    , CookieDrawData 70 
                                       Cookie
                                       (1010,1170)

                    , CookieDrawData 71 
                                       Cookie
                                       (1050,1170)

                    , CookieDrawData 72 
                                       Cookie
                                       (1050,1210)

                    , CookieDrawData 73 
                                       Cookie
                                       (1050,1250)

                    , CookieDrawData 74 
                                       Cookie
                                       (1050,1290)

                    , CookieDrawData 75 
                                       Cookie
                                       (1010,1290)

                    , CookieDrawData 76 
                                       Cookie
                                       (970,1290)

                    , CookieDrawData 77 
                                       Cookie
                                       (930,1290)

                    , CookieDrawData 78 
                                       Cookie
                                       (890,1290)

                    , CookieDrawData 79 
                                       Cookie
                                       (850,1290)

                    , CookieDrawData 80 
                                       Cookie
                                       (810,1290)

                    , CookieDrawData 81 
                                       Cookie
                                       (770,1290)

                    , CookieDrawData 82 
                                       Cookie
                                       (730,1290)

                    , CookieDrawData 83 
                                       Cookie
                                       (690,1290)

                    , CookieDrawData 84 
                                       Cookie
                                       (650,1290)

                    , CookieDrawData 85 
                                       Cookie
                                       (610,1290)

                    , CookieDrawData 86 
                                       Cookie
                                       (570,1290)

                    , CookieDrawData 87 
                                       Cookie
                                       (530,1290)

                    , CookieDrawData 88 
                                       Cookie
                                       (490,1290)

                    , CookieDrawData 89 
                                       Cookie
                                       (450,1290)

                    , CookieDrawData 90 
                                       Cookie
                                       (410,1290)

                    , CookieDrawData 91 
                                       Cookie
                                       (370,1290)

                    , CookieDrawData 92 
                                       Cookie
                                       (330,1290)

                    , CookieDrawData 93 
                                       Cookie
                                       (290,1290)

                    , CookieDrawData 94 
                                       Cookie
                                       (250,1290)

                    , CookieDrawData 95 
                                       Cookie
                                       (210,1290)

                    , CookieDrawData 96 
                                       Cookie
                                       (170,1290)

                    , CookieDrawData 97 
                                       Cookie
                                       (130,1290)

                    , CookieDrawData 98 
                                       Cookie
                                       (90,1290)

                    , CookieDrawData 99 
                                       Cookie
                                       (50,1290)

                    , CookieDrawData 100 
                                       Cookie
                                       (50,1250)

                    , CookieDrawData 101 
                                       Cookie
                                       (50,1210)

                    , CookieDrawData 102 
                                       Cookie
                                       (50,1170)

                    , CookieDrawData 103 
                                       Cookie
                                       (90,1170)

                    , CookieDrawData 104 
                                       Cookie
                                       (130,1170)

                    , CookieDrawData 105 
                                       Cookie
                                       (130,1130)

                    , CookieDrawData 106 
                                       Cookie
                                       (130,1090)

                    , CookieDrawData 107 
                                       Cookie
                                       (130,1050)

                    , CookieDrawData 108 
                                       Cookie
                                       (90,1050)

                    , CookieDrawData 109 
                                       Cookie
                                       (50,1010)

                    , CookieDrawData 110 
                                       Cookie
                                       (50,970)

                    , CookieDrawData 111 
                                       Cookie
                                       (50,930)

                    , CookieDrawData 112 
                                       Cookie
                                       (90,930)

                    , CookieDrawData 113 
                                       Cookie
                                       (130,930)

                    , CookieDrawData 114 
                                       Cookie
                                       (170,930)

                    , CookieDrawData 115 
                                       Cookie
                                       (210,930)

                    , CookieDrawData 116 
                                       Cookie
                                       (250,930)

                    , CookieDrawData 117 
                                       Cookie
                                       (250,890)

                    , CookieDrawData 118 
                                       Cookie
                                       (250,850)

                    , CookieDrawData 119 
                                       Cookie
                                       (250,810)

                    , CookieDrawData 120 
                                       Cookie
                                       (250,770)

                    , CookieDrawData 121 
                                       Cookie
                                       (250,730)

                    , CookieDrawData 122 
                                       Cookie
                                       (250,690)

                    , CookieDrawData 123 
                                       Cookie
                                       (250,650)

                    , CookieDrawData 124 
                                       Cookie
                                       (250,610)

                    , CookieDrawData 125 
                                       Cookie
                                       (250,570)

                    , CookieDrawData 126 
                                       Cookie
                                       (250,530)

                    , CookieDrawData 127 
                                       Cookie
                                       (250,490)

                    , CookieDrawData 128 
                                       Cookie
                                       (250,450)

                    , CookieDrawData 129 
                                       Cookie
                                       (210,450)

                    , CookieDrawData 130 
                                       Cookie
                                       (170,450)

                    , CookieDrawData 131 
                                       Cookie
                                       (130,450)

                    , CookieDrawData 132 
                                       Cookie
                                       (90,450)

                    , CookieDrawData 133 
                                       Cookie
                                       (50,450)

                    , CookieDrawData 134 
                                       Cookie
                                       (50,410)

                    , CookieDrawData 135 
                                       Cookie
                                       (50,370)

                    , CookieDrawData 136 
                                       Cookie
                                       (50,330)

                    , CookieDrawData 137 
                                       Cookie
                                       (50,290)

                    , CookieDrawData 138 
                                       Cookie
                                       (50,210)

                      --1
                    , CookieDrawData 139 
                                       Cookie
                                       (1010,330)

                    , CookieDrawData 140 
                                       Cookie
                                       (970,330)

                    , CookieDrawData 141 
                                       Cookie
                                       (930,330)

                    , CookieDrawData 142 
                                       Cookie
                                       (890,330)

                    , CookieDrawData 143 
                                       Cookie
                                       (850,330)

                    , CookieDrawData 144 
                                       Cookie
                                       (850,290)

                    , CookieDrawData 145 
                                       Cookie
                                       (850,250)

                    , CookieDrawData 146 
                                       Cookie
                                       (850,210)

                      --2
                    , CookieDrawData 147 
                                       Cookie
                                       (810,330)

                    , CookieDrawData 148 
                                       Cookie
                                       (770,330)

                    , CookieDrawData 149 
                                       Cookie
                                       (730,330)

                    , CookieDrawData 150 
                                       Cookie
                                       (690,330)

                    , CookieDrawData 151 
                                       Cookie
                                       (650,330)

                      --3
                    , CookieDrawData 152 
                                       Cookie
                                       (730,370)

                    , CookieDrawData 153 
                                       Cookie
                                       (730,410)

                    , CookieDrawData 154 
                                       Cookie
                                       (730,450)

                    , CookieDrawData 155 
                                       Cookie
                                       (690,450)

                    , CookieDrawData 156 
                                       Cookie
                                       (650,450)

                    , CookieDrawData 157 
                                       Cookie
                                       (610,450)

                      --4
                    , CookieDrawData 158 
                                       Cookie
                                       (450,330)

                    , CookieDrawData 159 
                                       Cookie
                                       (410,330)

                    , CookieDrawData 160 
                                       Cookie
                                       (370,330)

                    , CookieDrawData 161 
                                       Cookie
                                       (330,330)

                    , CookieDrawData 162 
                                       Cookie
                                       (290,330)

                    , CookieDrawData 163 
                                       Cookie
                                       (250,330)

                    , CookieDrawData 164 
                                       Cookie
                                       (250,290)

                    , CookieDrawData 165 
                                       Cookie
                                       (250,250)

                    , CookieDrawData 166 
                                       Cookie
                                       (250,210)

                      --5
                    , CookieDrawData 167 
                                       Cookie
                                       (210,330)

                    , CookieDrawData 168 
                                       Cookie
                                       (170,330)

                    , CookieDrawData 169 
                                       Cookie
                                       (130,330)

                    , CookieDrawData 170 
                                       Cookie
                                       (90,330)

                      --6
                    , CookieDrawData 171 
                                       Cookie
                                       (250,370)

                    , CookieDrawData 172 
                                       Cookie
                                       (250,410)

                      --7
                    , CookieDrawData 173 
                                       Cookie
                                       (370,370)

                    , CookieDrawData 174 
                                       Cookie
                                       (370,410)

                    , CookieDrawData 175 
                                       Cookie
                                       (370,450)

                    , CookieDrawData 176 
                                       Cookie
                                       (410,450)

                    , CookieDrawData 177 
                                       Cookie
                                       (450,450)

                    , CookieDrawData 178 
                                       Cookie
                                       (490,450)

                      --8
                    , CookieDrawData 179 
                                       Cookie
                                       (850,970)

                    , CookieDrawData 180 
                                       Cookie
                                       (850,1010)

                    , CookieDrawData 181 
                                       Cookie
                                       (850,1050)

                    , CookieDrawData 182 
                                       Cookie
                                       (850,1090)

                    , CookieDrawData 183 
                                       Cookie
                                       (850,1130)

                    , CookieDrawData 184 
                                       Cookie
                                       (850,1170)

                    , CookieDrawData 185 
                                       Cookie
                                       (890,1170)

                    , CookieDrawData 186 
                                       Cookie
                                       (930,1170)

                      --9
                    , CookieDrawData 187 
                                       Cookie
                                       (810,930)

                    , CookieDrawData 188 
                                       Cookie
                                       (770,930)

                    , CookieDrawData 189 
                                       Cookie
                                       (730,930)

                    , CookieDrawData 190 
                                       Cookie
                                       (690,930)

                    , CookieDrawData 191 
                                       Cookie
                                       (650,930)

                    , CookieDrawData 192 
                                       Cookie
                                       (610,930)

                    , CookieDrawData 193 
                                       Cookie
                                       (610,970)

                    , CookieDrawData 194 
                                       Cookie
                                       (610,1010)

                    , CookieDrawData 195 
                                       Cookie
                                       (610,1050)

                      --10
                    , CookieDrawData 196 
                                       Cookie
                                       (810,1050)

                    , CookieDrawData 197 
                                       Cookie
                                       (770,1050)

                    , CookieDrawData 198 
                                       Cookie
                                       (730,1050)

                    , CookieDrawData 199 
                                       Cookie
                                       (690,1050)

                    , CookieDrawData 200 
                                       Cookie
                                       (650,1050)

                      --11
                    , CookieDrawData 201 
                                       Cookie
                                       (730,1090)

                    , CookieDrawData 202 
                                       Cookie
                                       (730,1130)

                    , CookieDrawData 203 
                                       Cookie
                                       (730,1170)

                    , CookieDrawData 204 
                                       Cookie
                                       (690,1170)

                    , CookieDrawData 205 
                                       Cookie
                                       (650,1170)

                    , CookieDrawData 206 
                                       Cookie
                                       (610,1170)

                    , CookieDrawData 207 
                                       Cookie
                                       (610,1210)

                    , CookieDrawData 208 
                                       Cookie
                                       (610,1250)

                      --12
                    , CookieDrawData 209 
                                       Cookie
                                       (250,970)

                    , CookieDrawData 210 
                                       Cookie
                                       (250,1010)

                    , CookieDrawData 211 
                                       Cookie
                                       (250,1050)

                    , CookieDrawData 212 
                                       Cookie
                                       (250,1090)

                    , CookieDrawData 213 
                                       Cookie
                                       (250,1130)

                    , CookieDrawData 214 
                                       Cookie
                                       (250,1170)

                    , CookieDrawData 215 
                                       Cookie
                                       (210,1170)

                    , CookieDrawData 216 
                                       Cookie
                                       (170,1170)

                      --13
                    , CookieDrawData 217 
                                       Cookie
                                       (290,930)

                    , CookieDrawData 218 
                                       Cookie
                                       (330,930)

                    , CookieDrawData 219 
                                       Cookie
                                       (370,930)

                    , CookieDrawData 220 
                                       Cookie
                                       (410,930)

                    , CookieDrawData 221 
                                       Cookie
                                       (450,930)

                    , CookieDrawData 222 
                                       Cookie
                                       (490,930)

                    , CookieDrawData 223 
                                       Cookie
                                       (490,970)

                    , CookieDrawData 224 
                                       Cookie
                                       (490,1010)

                    , CookieDrawData 225 
                                       Cookie
                                       (490,1050)

                      --14
                    , CookieDrawData 226 
                                       Cookie
                                       (290,1050)

                    , CookieDrawData 227 
                                       Cookie
                                       (330,1050)

                    , CookieDrawData 228 
                                       Cookie
                                       (370,1050)

                    , CookieDrawData 229 
                                       Cookie
                                       (410,1050)

                    , CookieDrawData 230 
                                       Cookie
                                       (450,1050)

                      --15
                    , CookieDrawData 231 
                                       Cookie
                                       (370,1090)

                    , CookieDrawData 232 
                                       Cookie
                                       (370,1130)

                    , CookieDrawData 233 
                                       Cookie
                                       (370,1170)

                    , CookieDrawData 234 
                                       Cookie
                                       (410,1170)

                    , CookieDrawData 235 
                                       Cookie
                                       (450,1170)

                    , CookieDrawData 236 
                                       Cookie
                                       (490,1170)

                    , CookieDrawData 237 
                                       Cookie
                                       (490,1210)

                    , CookieDrawData 238 
                                       Cookie
                                       (490,1250)

                      --16
                    , CookieDrawData 239 
                                       Cookie
                                       (850,370)

                    , CookieDrawData 240 
                                       Cookie
                                       (850,410)

                    ]

{------------------}

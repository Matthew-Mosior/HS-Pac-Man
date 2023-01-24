module Graphics.Map.Static.Walls.Wall2 where


import Graphics.Map.Static.Walls.Common

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up the second wall of the map.-}

wall2 :: IO Picture
wall2 = do
  wall21 <- createWall (312,216)
  wall22 <- createWall (320,216)
  wall23 <- createWall (328,216)
  wall24 <- createWall (336,216)
  wall25 <- createWall (344,216)
  wall26 <- createWall (352,216)
  wall27 <- createWall (360,216)
  wall28 <- createWall (368,216)
  wall29 <- createWall (376,216)
  wall210 <- createWall (384,216)
  wall211 <- createWall (392,216)
  wall212 <- createWall (400,216)
  wall213 <- createWall (408,216)
  wall214 <- createWall (416,216)
  wall215 <- createWall (424,216)
  wall216 <- createWall (432,216)
  wall217 <- createWall (440,216)
  wall218 <- createWall (448,224)
  wall219 <- createWall (456,232)
  wall220 <- createWall (456,240)
  wall221 <- createWall (456,248)
  wall222 <- createWall (456,256)
  wall223 <- createWall (456,264)
  wall224 <- createWall (456,272)
  wall225 <- createWall (456,280)
  wall226 <- createWall (448,288)
  wall227 <- createWall (440,296)
  wall228 <- createWall (432,296)
  wall229 <- createWall (424,296)
  wall230 <- createWall (416,296)
  wall231 <- createWall (408,296)
  wall232 <- createWall (400,296)
  wall233 <- createWall (392,296)
  wall234 <- createWall (384,296)
  wall235 <- createWall (376,296)
  wall236 <- createWall (368,296)
  wall237 <- createWall (360,296)
  wall238 <- createWall (352,296)
  wall239 <- createWall (344,296)
  wall240 <- createWall (336,296)
  wall241 <- createWall (328,296)
  wall242 <- createWall (320,296)
  wall243 <- createWall (312,296)
  wall244 <- createWall (304,288)
  wall245 <- createWall (296,280)
  wall246 <- createWall (296,272)
  wall247 <- createWall (296,264)
  wall248 <- createWall (296,256)
  wall249 <- createWall (296,248)
  wall250 <- createWall (296,240)
  wall251 <- createWall (296,232)
  wall252 <- createWall (304,224)
  return $ Pictures [ wall21
                    , wall22
                    , wall23
                    , wall24
                    , wall25
                    , wall26
                    , wall27
                    , wall28
                    , wall29
                    , wall210
                    , wall211
                    , wall212
                    , wall213
                    , wall214
                    , wall215
                    , wall216
                    , wall217
                    , wall218
                    , wall219
                    , wall220
                    , wall221
                    , wall222
                    , wall223
                    , wall224
                    , wall225
                    , wall226
                    , wall227
                    , wall228
                    , wall229
                    , wall230
                    , wall231
                    , wall232
                    , wall233
                    , wall234
                    , wall235
                    , wall236
                    , wall237
                    , wall238
                    , wall239
                    , wall240
                    , wall241
                    , wall242
                    , wall243
                    , wall244
                    , wall245
                    , wall246
                    , wall247
                    , wall248
                    , wall249
                    , wall250
                    , wall251
                    , wall252 
                    ]

{--------------------------------------------------------------}

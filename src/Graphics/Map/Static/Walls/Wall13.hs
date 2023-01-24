module Graphics.Map.Static.Walls.Wall13 where


import Graphics.Map.Static.Walls.Common

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up the thirteenth wall of the map.-}

wall13 :: IO Picture
wall13 = do
  wall131 <- createWall (312,976) 
  wall132 <- createWall (320,976)
  wall133 <- createWall (328,976)
  wall134 <- createWall (336,976)
  wall135 <- createWall (344,976)
  wall136 <- createWall (352,976)
  wall137 <- createWall (360,976)
  wall138 <- createWall (368,976)
  wall139 <- createWall (376,976)
  wall1310 <- createWall (384,976)
  wall1311 <- createWall (392,976)
  wall1312 <- createWall (400,976)
  wall1313 <- createWall (408,976)
  wall1314 <- createWall (416,976)
  wall1315 <- createWall (424,976)
  wall1316 <- createWall (432,976)
  wall1317 <- createWall (440,976)
  wall1318 <- createWall (448,984)
  wall1319 <- createWall (456,992)
  wall1320 <- createWall (456,1000)
  wall1321 <- createWall (448,1008)
  wall1322 <- createWall (440,1016)
  wall1323 <- createWall (432,1016)
  wall1324 <- createWall (424,1016)
  wall1325 <- createWall (416,1016)
  wall1326 <- createWall (408,1016)
  wall1327 <- createWall (400,1016)
  wall1328 <- createWall (392,1016)
  wall1329 <- createWall (384,1016)
  wall1330 <- createWall (376,1016)
  wall1331 <- createWall (368,1016)
  wall1332 <- createWall (360,1016)
  wall1333 <- createWall (352,1016)
  wall1334 <- createWall (344,1016)
  wall1335 <- createWall (336,1016)
  wall1336 <- createWall (328,1016)
  wall1337 <- createWall (320,1016)
  wall1338 <- createWall (312,1016)
  wall1339 <- createWall (304,1008)
  wall1340 <- createWall (296,1000)
  wall1341 <- createWall (296,992)
  wall1342 <- createWall (304,984)
  return $ Pictures [ wall131 
                    , wall132 
                    , wall133 
                    , wall134 
                    , wall135 
                    , wall136 
                    , wall137 
                    , wall138 
                    , wall139 
                    , wall1310 
                    , wall1311 
                    , wall1312 
                    , wall1313 
                    , wall1314 
                    , wall1315 
                    , wall1316 
                    , wall1317 
                    , wall1318 
                    , wall1319 
                    , wall1320 
                    , wall1321 
                    , wall1322 
                    , wall1323 
                    , wall1324 
                    , wall1325 
                    , wall1326 
                    , wall1327 
                    , wall1328 
                    , wall1329 
                    , wall1330 
                    , wall1331 
                    , wall1332 
                    , wall1333 
                    , wall1334 
                    , wall1335 
                    , wall1336 
                    , wall1337 
                    , wall1338 
                    , wall1339 
                    , wall1340 
                    , wall1341 
                    , wall1342
                    ]

{------------------------------------------------------------------}

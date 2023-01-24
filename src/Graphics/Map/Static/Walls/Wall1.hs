module Graphics.Map.Static.Walls.Wall1 where


import Graphics.Map.Static.Walls.Common

import Graphics.Gloss.Data.Picture 


{-Define the Picture that makes up the first wall of the map.-}

wall1 :: IO Picture
wall1 = do
  wall11 <- createWall (112,216)
  wall12 <- createWall (120,216)
  wall13 <- createWall (128,216)
  wall14 <- createWall (136,216)
  wall15 <- createWall (144,216)
  wall16 <- createWall (152,216)
  wall17 <- createWall (160,216)
  wall18 <- createWall (168,216)
  wall19 <- createWall (176,216)
  wall110 <- createWall (184,216)
  wall111 <- createWall (192,216)
  wall112 <- createWall (200,216)
  wall113 <- createWall (208,224)
  wall114 <- createWall (216,232)
  wall115 <- createWall (216,240)
  wall116 <- createWall (216,248)
  wall117 <- createWall (216,256)
  wall118 <- createWall (216,264)
  wall119 <- createWall (216,272)
  wall120 <- createWall (216,280)
  wall121 <- createWall (208,288)
  wall122 <- createWall (200,296)
  wall123 <- createWall (192,296)
  wall124 <- createWall (184,296)
  wall125 <- createWall (176,296)
  wall126 <- createWall (168,296)
  wall127 <- createWall (160,296)
  wall128 <- createWall (152,296)
  wall129 <- createWall (144,296)
  wall130 <- createWall (136,296)
  wall131 <- createWall (128,296)
  wall132 <- createWall (120,296)
  wall133 <- createWall (112,296)
  wall134 <- createWall (104,288)
  wall135 <- createWall (96,280)
  wall136 <- createWall (96,272)
  wall137 <- createWall (96,264)
  wall138 <- createWall (96,256)
  wall139 <- createWall (96,248)
  wall140 <- createWall (96,240)
  wall141 <- createWall (96,232)
  wall142 <- createWall (104,224)
  return $ Pictures [ wall11 
                    , wall12 
                    , wall13 
                    , wall14 
                    , wall15 
                    , wall16 
                    , wall17 
                    , wall18 
                    , wall19 
                    , wall110 
                    , wall111 
                    , wall112 
                    , wall113 
                    , wall114 
                    , wall115 
                    , wall116 
                    , wall117 
                    , wall118 
                    , wall119 
                    , wall120 
                    , wall121 
                    , wall122 
                    , wall123 
                    , wall124 
                    , wall125 
                    , wall126 
                    , wall127 
                    , wall128 
                    , wall129 
                    , wall130 
                    , wall131 
                    , wall132 
                    , wall133 
                    , wall134 
                    , wall135 
                    , wall136 
                    , wall137 
                    , wall138 
                    , wall139 
                    , wall140 
                    , wall141 
                    , wall142
                    ]

{-------------------------------------------------------------}

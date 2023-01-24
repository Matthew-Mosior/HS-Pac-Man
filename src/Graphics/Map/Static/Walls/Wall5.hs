module Graphics.Map.Static.Walls.Wall5 where


import Graphics.Map.Static.Walls.Common

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up the fifth wall of the map.-}

wall5 :: IO Picture
wall5 = do
  wall51 <- createWall (112,376) 
  wall52 <- createWall (120,376)
  wall53 <- createWall (128,376)
  wall54 <- createWall (136,376)
  wall55 <- createWall (144,376)
  wall56 <- createWall (152,376)
  wall57 <- createWall (160,376)
  wall58 <- createWall (168,376)
  wall59 <- createWall (176,376)
  wall510 <- createWall (184,376)
  wall511 <- createWall (192,376)
  wall512 <- createWall (200,376)
  wall513 <- createWall (208,384)
  wall514 <- createWall (216,392)
  wall515 <- createWall (216,400)
  wall516 <- createWall (208,408)
  wall517 <- createWall (200,416)
  wall518 <- createWall (192,416)
  wall519 <- createWall (184,416)
  wall520 <- createWall (176,416)
  wall521 <- createWall (168,416)
  wall522 <- createWall (160,416)
  wall523 <- createWall (152,416)
  wall524 <- createWall (144,416)
  wall525 <- createWall (136,416)
  wall526 <- createWall (128,416)
  wall527 <- createWall (120,416)
  wall528 <- createWall (112,416)
  wall529 <- createWall (104,408)
  wall530 <- createWall (96,400)
  wall531 <- createWall (96,392)
  wall532 <- createWall (104,384)
  return $ Pictures [ wall51 
                    , wall52 
                    , wall53 
                    , wall54 
                    , wall55 
                    , wall56 
                    , wall57 
                    , wall58 
                    , wall59 
                    , wall510 
                    , wall511 
                    , wall512 
                    , wall513 
                    , wall514 
                    , wall515 
                    , wall516 
                    , wall517 
                    , wall518 
                    , wall519 
                    , wall520 
                    , wall521 
                    , wall522 
                    , wall523 
                    , wall524 
                    , wall525 
                    , wall526 
                    , wall527 
                    , wall528 
                    , wall529 
                    , wall530 
                    , wall531 
                    , wall532
                    ]

{-------------------------------------------------------------}

module Graphics.Map.Static.Walls.Wall4 where


import Graphics.Map.Static.Walls.Common

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up the four wall of the map.-}

wall4 :: IO Picture
wall4 = do
  wall41 <- createWall (912,216)
  wall42 <- createWall (920,216)
  wall43 <- createWall (928,216)
  wall44 <- createWall (936,216)
  wall45 <- createWall (944,216)
  wall46 <- createWall (952,216)
  wall47 <- createWall (960,216)
  wall48 <- createWall (968,216)
  wall49 <- createWall (976,216)
  wall410 <- createWall (984,216)
  wall411 <- createWall (992,216)
  wall412 <- createWall (1000,216)
  wall413 <- createWall (1008,224)
  wall414 <- createWall (1016,232)
  wall415 <- createWall (1016,240)
  wall416 <- createWall (1016,248)
  wall417 <- createWall (1016,256)
  wall418 <- createWall (1016,264)
  wall419 <- createWall (1016,272)
  wall420 <- createWall (1016,280)
  wall421 <- createWall (1008,288)
  wall422 <- createWall (1000,296)
  wall423 <- createWall (992,296)
  wall424 <- createWall (984,296)
  wall425 <- createWall (976,296)
  wall426 <- createWall (968,296)
  wall427 <- createWall (960,296)
  wall428 <- createWall (952,296)
  wall429 <- createWall (944,296)
  wall430 <- createWall (936,296)
  wall431 <- createWall (928,296)
  wall432 <- createWall (920,296)
  wall433 <- createWall (912,296)
  wall434 <- createWall (904,288)
  wall435 <- createWall (896,280)
  wall436 <- createWall (896,272)
  wall437 <- createWall (896,264)
  wall438 <- createWall (896,256)
  wall439 <- createWall (896,248)
  wall440 <- createWall (896,240)
  wall441 <- createWall (896,232)
  wall442 <- createWall (904,224)
  return $ Pictures [ wall41 
                    , wall42 
                    , wall43 
                    , wall44 
                    , wall45 
                    , wall46 
                    , wall47 
                    , wall48 
                    , wall49 
                    , wall410 
                    , wall411 
                    , wall412 
                    , wall413 
                    , wall414 
                    , wall415 
                    , wall416 
                    , wall417 
                    , wall418 
                    , wall419 
                    , wall420 
                    , wall421 
                    , wall422 
                    , wall423 
                    , wall424 
                    , wall425 
                    , wall426 
                    , wall427 
                    , wall428 
                    , wall429 
                    , wall430 
                    , wall431 
                    , wall432 
                    , wall433 
                    , wall434 
                    , wall435 
                    , wall436 
                    , wall437 
                    , wall438 
                    , wall439 
                    , wall440 
                    , wall441 
                    , wall442
                    ]

{------------------------------------------------------------}

module Graphics.Map.Static.Walls.Wall3 where


import Graphics.Map.Static.Walls.Common

import Data.Massiv.Array
import Data.Sequence as DSeq
import Graphics.Gloss.Raster.Massiv.Internal


{-Define the Picture that makes up the third wall of the map.-}

wall3 :: IO (Seq (Array S Ix2 ColorMassiv,(Int,Int)))
wall3 = do
  return DSeq.empty
  {-
  wall31 <- createWall (672,216)
  wall32 <- createWall (680,216)
  wall33 <- createWall (688,216)
  wall34 <- createWall (696,216)
  wall35 <- createWall (704,216)
  wall36 <- createWall (712,216)
  wall37 <- createWall (720,216)
  wall38 <- createWall (728,216)
  wall39 <- createWall (736,216)
  wall310 <- createWall (744,216)
  wall311 <- createWall (752,216)
  wall312 <- createWall (760,216)
  wall313 <- createWall (768,216)
  wall314 <- createWall (776,216)
  wall315 <- createWall (784,216)
  wall316 <- createWall (792,216)
  wall317 <- createWall (800,216)
  wall318 <- createWall (808,224)
  wall319 <- createWall (816,232)
  wall320 <- createWall (816,240)
  wall321 <- createWall (816,248)
  wall322 <- createWall (816,256)
  wall323 <- createWall (816,264)
  wall324 <- createWall (816,272)
  wall325 <- createWall (816,280)
  wall326 <- createWall (808,288)
  wall327 <- createWall (800,296)
  wall328 <- createWall (792,296)
  wall329 <- createWall (784,296)
  wall330 <- createWall (776,296)
  wall331 <- createWall (768,296)
  wall332 <- createWall (760,296)
  wall333 <- createWall (752,296)
  wall334 <- createWall (744,296)
  wall335 <- createWall (736,296)
  wall336 <- createWall (728,296)
  wall337 <- createWall (720,296)
  wall338 <- createWall (712,296)
  wall339 <- createWall (704,296)
  wall340 <- createWall (696,296)
  wall341 <- createWall (688,296)
  wall342 <- createWall (680,296)
  wall343 <- createWall (672,296)
  wall344 <- createWall (664,288)
  wall345 <- createWall (656,280)
  wall346 <- createWall (656,272)
  wall347 <- createWall (656,264)
  wall348 <- createWall (656,256)
  wall349 <- createWall (656,248)
  wall350 <- createWall (656,240)
  wall351 <- createWall (656,232)
  wall352 <- createWall (664,224)
  return $ [ wall31 
           , wall32 
           , wall33 
           , wall34 
           , wall35 
           , wall36 
           , wall37 
           , wall38 
           , wall39 
           , wall310 
           , wall311 
           , wall312 
           , wall313 
           , wall314 
           , wall315 
           , wall316 
           , wall317 
           , wall318 
           , wall319 
           , wall320 
           , wall321 
           , wall322 
           , wall323 
           , wall324 
           , wall325 
           , wall326 
           , wall327 
           , wall328 
           , wall329 
           , wall330 
           , wall331 
           , wall332 
           , wall333 
           , wall334 
           , wall335 
           , wall336 
           , wall337 
           , wall338 
           , wall339 
           , wall340 
           , wall341 
           , wall342 
           , wall343 
           , wall344 
           , wall345 
           , wall346 
           , wall347 
           , wall348 
           , wall349 
           , wall350 
           , wall351 
           , wall352
           ]
  -}

{-------------------------------------------------------------}

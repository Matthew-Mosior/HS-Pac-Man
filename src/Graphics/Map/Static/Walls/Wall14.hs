module Graphics.Map.Static.Walls.Wall14 where


import Graphics.Map.Static.Walls.Common

import Data.Massiv.Array
import Data.Sequence as DSeq
import Graphics.Gloss.Raster.Massiv.Internal


{-Define the Picture that makes up the fourteenth wall of the map.-}

wall14 :: IO (Seq (Array S Ix2 ColorMassiv,(Int,Int)))
wall14 = do
  return DSeq.empty
  {-
  wall141 <- createWall (432,856)
  wall142 <- createWall (440,856)
  wall143 <- createWall (448,856)
  wall144 <- createWall (456,856)
  wall145 <- createWall (464,856)
  wall146 <- createWall (472,856)
  wall147 <- createWall (480,856)
  wall148 <- createWall (488,856)
  wall149 <- createWall (496,856)
  wall1410 <- createWall (504,856)
  wall1411 <- createWall (512,856)
  wall1412 <- createWall (520,856)
  wall1413 <- createWall (528,856)
  wall1414 <- createWall (536,856)
  wall1415 <- createWall (544,856)
  wall1416 <- createWall (552,856)
  wall1417 <- createWall (560,856)
  wall1418 <- createWall (568,856)
  wall1419 <- createWall (576,856)
  wall1420 <- createWall (584,856)
  wall1421 <- createWall (592,856)
  wall1422 <- createWall (600,856)
  wall1423 <- createWall (608,856)
  wall1424 <- createWall (616,856)
  wall1425 <- createWall (624,856)
  wall1426 <- createWall (632,856)
  wall1427 <- createWall (640,856)
  wall1428 <- createWall (648,856)
  wall1429 <- createWall (656,856)
  wall1430 <- createWall (664,856)
  wall1431 <- createWall (672,856)
  wall1432 <- createWall (680,856)
  wall1433 <- createWall (688,864)
  wall1434 <- createWall (696,872)
  wall1435 <- createWall (696,880)
  wall1436 <- createWall (688,888)
  wall1437 <- createWall (680,896)
  wall1438 <- createWall (672,896)
  wall1439 <- createWall (664,896)
  wall1440 <- createWall (656,896)
  wall1441 <- createWall (648,896)
  wall1442 <- createWall (640,896)
  wall1443 <- createWall (632,896)
  wall1444 <- createWall (624,896)
  wall1445 <- createWall (616,896)
  wall1446 <- createWall (608,896)
  wall1447 <- createWall (600,896)
  wall1448 <- createWall (592,896)
  wall1449 <- createWall (584,904)
  wall1450 <- createWall (576,912)
  wall1451 <- createWall (576,920)
  wall1452 <- createWall (576,928)
  wall1453 <- createWall (576,936)
  wall1454 <- createWall (576,944)
  wall1455 <- createWall (576,952)
  wall1456 <- createWall (576,960)
  wall1457 <- createWall (576,968)
  wall1458 <- createWall (576,976)
  wall1459 <- createWall (576,984)
  wall1460 <- createWall (576,992)
  wall1461 <- createWall (576,1000)
  wall1462 <- createWall (568,1008)
  wall1463 <- createWall (560,1016)
  wall1464 <- createWall (552,1016)
  wall1465 <- createWall (544,1008)
  wall1466 <- createWall (536,1000)
  wall1467 <- createWall (536,992)
  wall1468 <- createWall (536,984)
  wall1469 <- createWall (536,976)
  wall1470 <- createWall (536,968)
  wall1471 <- createWall (536,960)
  wall1472 <- createWall (536,952)
  wall1473 <- createWall (536,944)
  wall1474 <- createWall (536,936)
  wall1475 <- createWall (536,928)
  wall1476 <- createWall (536,920)
  wall1477 <- createWall (536,912)
  wall1478 <- createWall (528,904)
  wall1479 <- createWall (520,896)
  wall1480 <- createWall (512,896)
  wall1481 <- createWall (504,896)
  wall1482 <- createWall (496,896)
  wall1483 <- createWall (488,896)
  wall1484 <- createWall (480,896)
  wall1485 <- createWall (472,896)
  wall1486 <- createWall (464,896)
  wall1487 <- createWall (456,896)
  wall1488 <- createWall (448,896)
  wall1489 <- createWall (440,896)
  wall1490 <- createWall (432,896)
  wall1491 <- createWall (424,888)
  wall1492 <- createWall (416,880)
  wall1493 <- createWall (416,872)
  wall1494 <- createWall (424,864)
  return $ [ wall141 
           , wall142 
           , wall143 
           , wall144 
           , wall145 
           , wall146 
           , wall147 
           , wall148 
           , wall149 
           , wall1410 
           , wall1411 
           , wall1412 
           , wall1413 
           , wall1414 
           , wall1415 
           , wall1416 
           , wall1417 
           , wall1418 
           , wall1419 
           , wall1420 
           , wall1421 
           , wall1422 
           , wall1423 
           , wall1424 
           , wall1425 
           , wall1426 
           , wall1427 
           , wall1428 
           , wall1429 
           , wall1430 
           , wall1431 
           , wall1432 
           , wall1433 
           , wall1434 
           , wall1435 
           , wall1436 
           , wall1437 
           , wall1438 
           , wall1439 
           , wall1440 
           , wall1441 
           , wall1442 
           , wall1443 
           , wall1444 
           , wall1445 
           , wall1446 
           , wall1447 
           , wall1448 
           , wall1449 
           , wall1450 
           , wall1451 
           , wall1452 
           , wall1453 
           , wall1454 
           , wall1455 
           , wall1456 
           , wall1457 
           , wall1458 
           , wall1459 
           , wall1460 
           , wall1461 
           , wall1462 
           , wall1463 
           , wall1464 
           , wall1465 
           , wall1466 
           , wall1467 
           , wall1468 
           , wall1469 
           , wall1470 
           , wall1471 
           , wall1472 
           , wall1473 
           , wall1474 
           , wall1475 
           , wall1476 
           , wall1477 
           , wall1478 
           , wall1479 
           , wall1480 
           , wall1481 
           , wall1482 
           , wall1483 
           , wall1484 
           , wall1485 
           , wall1486 
           , wall1487 
           , wall1488 
           , wall1489 
           , wall1490 
           , wall1491 
           , wall1492 
           , wall1493 
           , wall1494
           ]
  -}

{------------------------------------------------------------------}

module Graphics.Map.Static.Walls.Wall9 where


import Graphics.Map.Static.Walls.Common

import Data.Massiv.Array
import Data.Sequence as DSeq
import Graphics.Gloss.Raster.Massiv.Internal


{-Define the Picture that makes up the ninth wall of the map.-}

wall9 :: IO (Seq (Array S Ix2 ColorMassiv,(Int,Int)))
wall9 = do
  return DSeq.empty
  {-
  wall91 <- createWall (912,376)
  wall92 <- createWall (920,376)
  wall93 <- createWall (928,376)
  wall94 <- createWall (936,376)
  wall95 <- createWall (944,376)
  wall96 <- createWall (952,376)
  wall97 <- createWall (960,376)
  wall98 <- createWall (968,376)
  wall99 <- createWall (976,376)
  wall910 <- createWall (984,376)
  wall911 <- createWall (992,376)
  wall912 <- createWall (1000,376)
  wall913 <- createWall (1008,384)
  wall914 <- createWall (1016,392)
  wall915 <- createWall (1016,400)
  wall916 <- createWall (1008,408)
  wall917 <- createWall (1000,416)
  wall918 <- createWall (992,416)
  wall919 <- createWall (984,416)
  wall920 <- createWall (976,416)
  wall921 <- createWall (968,416)
  wall922 <- createWall (960,416)
  wall923 <- createWall (952,416)
  wall924 <- createWall (944,416)
  wall925 <- createWall (936,416)
  wall926 <- createWall (928,416)
  wall927 <- createWall (920,416)
  wall928 <- createWall (912,416)
  wall929 <- createWall (904,408)
  wall930 <- createWall (896,400)
  wall931 <- createWall (896,392)
  wall932 <- createWall (904,384)
  return $ [ wall91 
           , wall92 
           , wall93 
           , wall94 
           , wall95 
           , wall96 
           , wall97 
           , wall98 
           , wall99 
           , wall910 
           , wall911 
           , wall912 
           , wall913 
           , wall914 
           , wall915 
           , wall916 
           , wall917 
           , wall918 
           , wall919 
           , wall920 
           , wall921 
           , wall922 
           , wall923 
           , wall924 
           , wall925 
           , wall926 
           , wall927 
           , wall928 
           , wall929 
           , wall930 
           , wall931 
           , wall932
           ]
  -}

{-------------------------------------------------------------}

module Graphics.Map.Static.GhostHouse.OuterGhostHouse where


import Graphics.Map.Static.GhostHouse.Common

import Data.Massiv.Array
import Data.Sequence as DSeq
import Graphics.Gloss.Raster.Massiv.Internal


{-Define the Picture that makes up the ghost house of the map.-}

outerghosthouse :: IO (Seq ((Array S Ix2 ColorMassiv),(Int,Int)))
outerghosthouse = do
  return DSeq.empty
  {-
  outerghosthouse1 <- createGhostHouse (432,616)
  outerghosthouse2 <- createGhostHouse (440,616)
  outerghosthouse3 <- createGhostHouse (448,616)
  outerghosthouse4 <- createGhostHouse (456,616)
  outerghosthouse5 <- createGhostHouse (464,616)
  outerghosthouse6 <- createGhostHouse (472,616)
  outerghosthouse7 <- createGhostHouse (480,616)
  outerghosthouse8 <- createGhostHouse (488,616)
  outerghosthouse9 <- createGhostHouse (496,616)
  outerghosthouse10 <- createGhostHouse (504,616)
  outerghosthouse11 <- createGhostHouse (512,616)
  outerghosthouse12 <- createGhostHouse (600,616)
  outerghosthouse13 <- createGhostHouse (608,616)
  outerghosthouse14 <- createGhostHouse (616,616)
  outerghosthouse15 <- createGhostHouse (624,616)
  outerghosthouse16 <- createGhostHouse (632,616)
  outerghosthouse17 <- createGhostHouse (640,616)
  outerghosthouse18 <- createGhostHouse (648,616)
  outerghosthouse19 <- createGhostHouse (656,616)
  outerghosthouse20 <- createGhostHouse (664,616)
  outerghosthouse21 <- createGhostHouse (672,616)
  outerghosthouse22 <- createGhostHouse (680,616)
  outerghosthouse23 <- createGhostHouse (688,616)
  outerghosthouse24 <- createGhostHouse (696,616)
  outerghosthouse25 <- createGhostHouse (696,624)
  outerghosthouse26 <- createGhostHouse (696,632)
  outerghosthouse27 <- createGhostHouse (696,640)
  outerghosthouse28 <- createGhostHouse (696,648)
  outerghosthouse29 <- createGhostHouse (696,656)
  outerghosthouse30 <- createGhostHouse (696,664)
  outerghosthouse31 <- createGhostHouse (696,672)
  outerghosthouse32 <- createGhostHouse (696,680)
  outerghosthouse33 <- createGhostHouse (696,688)
  outerghosthouse34 <- createGhostHouse (696,696)
  outerghosthouse35 <- createGhostHouse (696,704)
  outerghosthouse36 <- createGhostHouse (696,712)
  outerghosthouse37 <- createGhostHouse (696,720)
  outerghosthouse38 <- createGhostHouse (696,728)
  outerghosthouse39 <- createGhostHouse (696,736)
  outerghosthouse40 <- createGhostHouse (696,744)
  outerghosthouse41 <- createGhostHouse (696,752)
  outerghosthouse42 <- createGhostHouse (696,760)
  outerghosthouse43 <- createGhostHouse (696,768)
  outerghosthouse44 <- createGhostHouse (696,776)
  outerghosthouse45 <- createGhostHouse (688,776)
  outerghosthouse46 <- createGhostHouse (680,776)
  outerghosthouse47 <- createGhostHouse (672,776)
  outerghosthouse48 <- createGhostHouse (664,776)
  outerghosthouse49 <- createGhostHouse (656,776)
  outerghosthouse50 <- createGhostHouse (648,776)
  outerghosthouse51 <- createGhostHouse (640,776)
  outerghosthouse52 <- createGhostHouse (632,776)
  outerghosthouse53 <- createGhostHouse (624,776)
  outerghosthouse54 <- createGhostHouse (616,776)
  outerghosthouse55 <- createGhostHouse (608,776)
  outerghosthouse56 <- createGhostHouse (600,776)
  outerghosthouse57 <- createGhostHouse (592,776)
  outerghosthouse58 <- createGhostHouse (584,776)
  outerghosthouse59 <- createGhostHouse (576,776)
  outerghosthouse60 <- createGhostHouse (568,776)
  outerghosthouse61 <- createGhostHouse (560,776)
  outerghosthouse62 <- createGhostHouse (552,776)
  outerghosthouse63 <- createGhostHouse (544,776)
  outerghosthouse64 <- createGhostHouse (536,776)
  outerghosthouse65 <- createGhostHouse (528,776)
  outerghosthouse66 <- createGhostHouse (520,776)
  outerghosthouse67 <- createGhostHouse (512,776)
  outerghosthouse68 <- createGhostHouse (504,776)
  outerghosthouse69 <- createGhostHouse (496,776)
  outerghosthouse70 <- createGhostHouse (488,776)
  outerghosthouse71 <- createGhostHouse (480,776)
  outerghosthouse72 <- createGhostHouse (472,776)
  outerghosthouse73 <- createGhostHouse (464,776)
  outerghosthouse74 <- createGhostHouse (456,776)
  outerghosthouse75 <- createGhostHouse (448,776)
  outerghosthouse76 <- createGhostHouse (440,776)
  outerghosthouse77 <- createGhostHouse (432,776)
  outerghosthouse78 <- createGhostHouse (424,776)
  outerghosthouse79 <- createGhostHouse (416,776)
  outerghosthouse80 <- createGhostHouse (416,768)
  outerghosthouse81 <- createGhostHouse (416,760)
  outerghosthouse82 <- createGhostHouse (416,752)
  outerghosthouse83 <- createGhostHouse (416,744)
  outerghosthouse84 <- createGhostHouse (416,736)
  outerghosthouse85 <- createGhostHouse (416,728)
  outerghosthouse86 <- createGhostHouse (416,720)
  outerghosthouse87 <- createGhostHouse (416,712)
  outerghosthouse88 <- createGhostHouse (416,704)
  outerghosthouse89 <- createGhostHouse (416,696)
  outerghosthouse90 <- createGhostHouse (416,688)
  outerghosthouse91 <- createGhostHouse (416,680)
  outerghosthouse92 <- createGhostHouse (416,672)
  outerghosthouse93 <- createGhostHouse (416,664)
  outerghosthouse94 <- createGhostHouse (416,656)
  outerghosthouse95 <- createGhostHouse (416,648)
  outerghosthouse96 <- createGhostHouse (416,640)
  outerghosthouse97 <- createGhostHouse (416,632)
  outerghosthouse98 <- createGhostHouse (416,624)
  outerghosthouse99 <- createGhostHouse (416,616)
  outerghosthouse100 <- createGhostHouse (424,616)
  return $ [ outerghosthouse1 
           , outerghosthouse2 
           , outerghosthouse3 
           , outerghosthouse4 
           , outerghosthouse5 
           , outerghosthouse6 
           , outerghosthouse7 
           , outerghosthouse8 
           , outerghosthouse9 
           , outerghosthouse10 
           , outerghosthouse11 
           , outerghosthouse12 
           , outerghosthouse13 
           , outerghosthouse14 
           , outerghosthouse15 
           , outerghosthouse16 
           , outerghosthouse17 
           , outerghosthouse18 
           , outerghosthouse19 
           , outerghosthouse20 
           , outerghosthouse21 
           , outerghosthouse22 
           , outerghosthouse23 
           , outerghosthouse24 
           , outerghosthouse25 
           , outerghosthouse26 
           , outerghosthouse27 
           , outerghosthouse28 
           , outerghosthouse29 
           , outerghosthouse30 
           , outerghosthouse31 
           , outerghosthouse32 
           , outerghosthouse33 
           , outerghosthouse34 
           , outerghosthouse35 
           , outerghosthouse36 
           , outerghosthouse37 
           , outerghosthouse38 
           , outerghosthouse39 
           , outerghosthouse40 
           , outerghosthouse41 
           , outerghosthouse42 
           , outerghosthouse43 
           , outerghosthouse44 
           , outerghosthouse45 
           , outerghosthouse46 
           , outerghosthouse47 
           , outerghosthouse48 
           , outerghosthouse49 
           , outerghosthouse50 
           , outerghosthouse51 
           , outerghosthouse52 
           , outerghosthouse53 
           , outerghosthouse54 
           , outerghosthouse55 
           , outerghosthouse56 
           , outerghosthouse57 
           , outerghosthouse58 
           , outerghosthouse59 
           , outerghosthouse60 
           , outerghosthouse61 
           , outerghosthouse62 
           , outerghosthouse63 
           , outerghosthouse64 
           , outerghosthouse65 
           , outerghosthouse66 
           , outerghosthouse67 
           , outerghosthouse68 
           , outerghosthouse69 
           , outerghosthouse70 
           , outerghosthouse71 
           , outerghosthouse72 
           , outerghosthouse73 
           , outerghosthouse74 
           , outerghosthouse75 
           , outerghosthouse76 
           , outerghosthouse77 
           , outerghosthouse78 
           , outerghosthouse79 
           , outerghosthouse80 
           , outerghosthouse81 
           , outerghosthouse82 
           , outerghosthouse83 
           , outerghosthouse84 
           , outerghosthouse85 
           , outerghosthouse86 
           , outerghosthouse87 
           , outerghosthouse88 
           , outerghosthouse89 
           , outerghosthouse90 
           , outerghosthouse91 
           , outerghosthouse92 
           , outerghosthouse93 
           , outerghosthouse94 
           , outerghosthouse95 
           , outerghosthouse96 
           , outerghosthouse97 
           , outerghosthouse98 
           , outerghosthouse99 
           , outerghosthouse100
           ]
  -}

{--------------------------------------------------------------}

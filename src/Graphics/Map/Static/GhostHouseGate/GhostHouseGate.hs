module Graphics.Map.Static.GhostHouseGate.GhostHouseGate where


import Graphics.Map.Static.GhostHouseGate.Common

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up the ghost house of the map.-}

ghosthousegate :: IO Picture
ghosthousegate = do
  ghosthousegate1 <- createGhostHouseGate (520,620)
  ghosthousegate2 <- createGhostHouseGate (520,628)
  ghosthousegate3 <- createGhostHouseGate (528,620)
  ghosthousegate4 <- createGhostHouseGate (528,628)
  ghosthousegate5 <- createGhostHouseGate (536,620)
  ghosthousegate6 <- createGhostHouseGate (536,628)
  ghosthousegate7 <- createGhostHouseGate (544,620)
  ghosthousegate8 <- createGhostHouseGate (544,628)
  ghosthousegate9 <- createGhostHouseGate (552,620)
  ghosthousegate10 <- createGhostHouseGate (552,628)
  ghosthousegate11 <- createGhostHouseGate (560,620)
  ghosthousegate12 <- createGhostHouseGate (560,628)
  ghosthousegate13 <- createGhostHouseGate (568,620)
  ghosthousegate14 <- createGhostHouseGate (568,628)
  ghosthousegate15 <- createGhostHouseGate (576,620)
  ghosthousegate16 <- createGhostHouseGate (576,628)
  ghosthousegate17 <- createGhostHouseGate (584,620)
  ghosthousegate18 <- createGhostHouseGate (584,628)
  ghosthousegate19 <- createGhostHouseGate (592,620)
  ghosthousegate20 <- createGhostHouseGate (592,628)
  return $ Pictures [ ghosthousegate1 
                    , ghosthousegate2 
                    , ghosthousegate3 
                    , ghosthousegate4 
                    , ghosthousegate5 
                    , ghosthousegate6 
                    , ghosthousegate7 
                    , ghosthousegate8 
                    , ghosthousegate9 
                    , ghosthousegate10 
                    , ghosthousegate11 
                    , ghosthousegate12 
                    , ghosthousegate13 
                    , ghosthousegate14 
                    , ghosthousegate15 
                    , ghosthousegate16 
                    , ghosthousegate17 
                    , ghosthousegate18 
                    , ghosthousegate19 
                    , ghosthousegate20
                    ]

{--------------------------------------------------------------}

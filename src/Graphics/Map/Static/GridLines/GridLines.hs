module Graphics.Map.Static.GridLines.GridLines where

import Graphics.Gloss.Data.Color
import Graphics.Gloss.Data.Picture


{-Top border constants.-}

gridLineXCoorsH :: (Float,Float)
                -> [Float]
gridLineXCoorsH (x1,x2) = [x1..x2] :: [Float]

gridLineYCoorsH :: Int
                -> Float
                -> [Float]
gridLineYCoorsH xlen vinit = replicate xlen
                                       vinit

makeGridLineH :: (Float,Float)
              -> Float
              -> Picture
makeGridLineH (x1,x2) vinit = translate ((-1120/2) + 1)
                                        ((-1440/2) + 1) $
                              Color white
                                    (Line (zip (gridLineXCoorsH (x1,x2))
                                               (gridLineYCoorsH (length (gridLineXCoorsH (x1,x2)))
                                                                vinit
                                               )
                                          )
                                    )

gridLineYCoorsV :: (Float,Float)
                -> [Float]
gridLineYCoorsV (x1,x2) = [x1..x2] :: [Float]

gridLineXCoorsV :: Int
                -> Float
                -> [Float]
gridLineXCoorsV ylen hinit = replicate ylen
                                       hinit

makeGridLineV :: (Float,Float)
              -> Float
              -> Picture
makeGridLineV (x1,x2) hinit = translate ((-1120/2) + 1)
                                        ((-1440/2) + 1) $
                              Color white
                                    (Line (zip (gridLineXCoorsV (length (gridLineYCoorsV (x1,x2)))
                                                                hinit
                                               )
                                               (gridLineYCoorsV (x1,x2))
                                          )
                                    )

{-----------------------}


{-Define the Picture that makes up the horizontal gridlines of the map.-}

horizontalgridlines :: IO Picture
horizontalgridlines = do
  let gridlineh1 = makeGridLineH (0.0,1120.0)
                                 0.0
  let gridlineh2 = makeGridLineH (0.0,1120.0)
                                 40.0 
  let gridlineh3 = makeGridLineH (0.0,1120.0)
                                 80.0
  let gridlineh4 = makeGridLineH (0.0,1120.0)
                                 120.0
  let gridlineh5 = makeGridLineH (0.0,1120.0)
                                 160.0
  let gridlineh6 = makeGridLineH (0.0,1120.0) 
                                 200.0
  let gridlineh7 = makeGridLineH (0.0,1120.0) 
                                 240.0
  let gridlineh8 = makeGridLineH (0.0,1120.0) 
                                 280.0
  let gridlineh9 = makeGridLineH (0.0,1120.0)
                                 320.0
  let gridlineh10 = makeGridLineH (0.0,1120.0)
                                  360.0
  let gridlineh11 = makeGridLineH (0.0,1120.0)
                                  400.0
  let gridlineh12 = makeGridLineH (0.0,1120.0)
                                  440.0
  let gridlineh13 = makeGridLineH (0.0,1120.0)
                                  480.0
  let gridlineh14 = makeGridLineH (0.0,1120.0)
                                  520.0
  let gridlineh15 = makeGridLineH (0.0,1120.0)
                                  560.0
  let gridlineh16 = makeGridLineH (0.0,1120.0)
                                  600.0
  let gridlineh17 = makeGridLineH (0.0,1120.0)
                                  640.0
  let gridlineh18 = makeGridLineH (0.0,1120.0)
                                  680.0
  let gridlineh19 = makeGridLineH (0.0,1120.0)
                                  720.0
  let gridlineh20 = makeGridLineH (0.0,1120.0)
                                  760.0
  let gridlineh21 = makeGridLineH (0.0,1120.0)
                                  800.0
  let gridlineh22 = makeGridLineH (0.0,1120.0)
                                  840.0
  let gridlineh23 = makeGridLineH (0.0,1120.0)
                                  880.0
  let gridlineh24 = makeGridLineH (0.0,1120.0)
                                  920.0
  let gridlineh25 = makeGridLineH (0.0,1120.0)
                                  960.0
  let gridlineh26 = makeGridLineH (0.0,1120.0)
                                  1000.0
  let gridlineh27 = makeGridLineH (0.0,1120.0)
                                  1040.0
  let gridlineh28 = makeGridLineH (0.0,1120.0)
                                  1080.0
  let gridlineh29 = makeGridLineH (0.0,1120.0)
                                  1120.0
  let gridlineh30 = makeGridLineH (0.0,1120.0)
                                  1160.0
  let gridlineh31 = makeGridLineH (0.0,1120.0)
                                  1200.0
  let gridlineh32 = makeGridLineH (0.0,1120.0)
                                  1240.0
  let gridlineh33 = makeGridLineH (0.0,1120.0)
                                  1280.0
  let gridlineh34 = makeGridLineH (0.0,1120.0)
                                  1320.0
  let gridlineh35 = makeGridLineH (0.0,1120.0)
                                  1360.0
  let gridlineh36 = makeGridLineH (0.0,1120.0)
                                  1400.0
  let gridlineh37 = makeGridLineH (0.0,1120.0)
                                  1439.0
  return $ Pictures [ gridlineh1 
                    , gridlineh2 
                    , gridlineh3 
                    , gridlineh4 
                    , gridlineh5 
                    , gridlineh6 
                    , gridlineh7 
                    , gridlineh8 
                    , gridlineh9 
                    , gridlineh10 
                    , gridlineh11 
                    , gridlineh12 
                    , gridlineh13 
                    , gridlineh14 
                    , gridlineh15 
                    , gridlineh16 
                    , gridlineh17 
                    , gridlineh18 
                    , gridlineh19 
                    , gridlineh20 
                    , gridlineh21 
                    , gridlineh22 
                    , gridlineh23 
                    , gridlineh24 
                    , gridlineh25 
                    , gridlineh26 
                    , gridlineh27 
                    , gridlineh28 
                    , gridlineh29 
                    , gridlineh30 
                    , gridlineh31 
                    , gridlineh32 
                    , gridlineh33 
                    , gridlineh34 
                    , gridlineh35 
                    , gridlineh36 
                    , gridlineh37 
                    ]

{-----------------------------------------------------------------------}


{-Define the Picture that makes up the vertical gridlines of the map.-}

verticalgridlines :: IO Picture
verticalgridlines = do
  let gridlinev1 = makeGridLineV (0.0,1440.0) 
                                 0.0
  let gridlinev2 = makeGridLineV (0.0,1440.0)
                                 40.0
  let gridlinev3 = makeGridLineV (0.0,1440.0)
                                 80.0
  let gridlinev4 = makeGridLineV (0.0,1440.0)
                                 120.0
  let gridlinev5 = makeGridLineV (0.0,1440.0)
                                 160.0
  let gridlinev6 = makeGridLineV (0.0,1440.0)
                                 200.0
  let gridlinev7 = makeGridLineV (0.0,1440.0)
                                 240.0
  let gridlinev8 = makeGridLineV (0.0,1440.0)
                                 280.0
  let gridlinev9 = makeGridLineV (0.0,1440.0)
                                 320.0
  let gridlinev10 = makeGridLineV (0.0,1440.0)
                                  360.0
  let gridlinev11 = makeGridLineV (0.0,1440.0)
                                  400.0
  let gridlinev12 = makeGridLineV (0.0,1440.0)
                                  440.0
  let gridlinev13 = makeGridLineV (0.0,1440.0)
                                  480.0
  let gridlinev14 = makeGridLineV (0.0,1440.0)
                                  520.0
  let gridlinev15 = makeGridLineV (0.0,1440.0)
                                  560.0
  let gridlinev16 = makeGridLineV (0.0,1440.0)
                                  600.0
  let gridlinev17 = makeGridLineV (0.0,1440.0)
                                  640.0
  let gridlinev18 = makeGridLineV (0.0,1440.0)
                                  680.0
  let gridlinev19 = makeGridLineV (0.0,1440.0)
                                  720.0
  let gridlinev20 = makeGridLineV (0.0,1440.0)
                                  760.0
  let gridlinev21 = makeGridLineV (0.0,1440.0)
                                  800.0
  let gridlinev22 = makeGridLineV (0.0,1440.0)
                                  840.0
  let gridlinev23 = makeGridLineV (0.0,1440.0)
                                  880.0
  let gridlinev24 = makeGridLineV (0.0,1440.0)
                                  920.0
  let gridlinev25 = makeGridLineV (0.0,1440.0)
                                  960.0
  let gridlinev26 = makeGridLineV (0.0,1440.0)
                                  1000.0
  let gridlinev27 = makeGridLineV (0.0,1440.0)
                                  1040.0
  let gridlinev28 = makeGridLineV (0.0,1440.0)
                                  1080.0
  let gridlinev29 = makeGridLineV (0.0,1440.0)
                                  1119.0
  return $ Pictures [ gridlinev1
                    , gridlinev2
                    , gridlinev3
                    , gridlinev4
                    , gridlinev5
                    , gridlinev6
                    , gridlinev7
                    , gridlinev8
                    , gridlinev9
                    , gridlinev10
                    , gridlinev11
                    , gridlinev12
                    , gridlinev13
                    , gridlinev14
                    , gridlinev15
                    , gridlinev16
                    , gridlinev17
                    , gridlinev18
                    , gridlinev19
                    , gridlinev20
                    , gridlinev21
                    , gridlinev22
                    , gridlinev23
                    , gridlinev24
                    , gridlinev25
                    , gridlinev26
                    , gridlinev27
                    , gridlinev28
                    , gridlinev29
                    ]

{---------------------------------------------------------------------}

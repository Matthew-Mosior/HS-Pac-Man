module Graphics.Map.Static.GhostHouseGate.Common where

import Codec.BMP (parseBMP)
import Data.ByteString.Lazy as DBL (readFile)
import Graphics.Gloss.Data.Bitmap
import Graphics.Gloss.Data.Picture


{-GhostHouse constants.-}

createGhostHouseGate :: (Int,Int)
                     -> IO Picture 
createGhostHouseGate (xpos,ypos) = do
  bmp <- DBL.readFile "assets/ghosthousegate.bmp"
  let parsedbmp = parseBMP bmp
  case parsedbmp of
    Left  _    -> return Blank
    Right fbmp -> return                                                  $
                  Rotate 180.0                                            $
                  Translate ((fromIntegral xpos :: Float) - (1120/2) + 4) 
                            ((fromIntegral ypos :: Float) - (1440/2) + 2) $
                  Bitmap (bitmapDataOfBMP fbmp) 

{-----------------------}

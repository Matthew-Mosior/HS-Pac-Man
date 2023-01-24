module Graphics.Map.Static.Walls.Common where

import Codec.BMP (parseBMP)
import Data.ByteString.Lazy as DBL (readFile)
import Graphics.Gloss.Data.Bitmap
import Graphics.Gloss.Data.Picture


{-Wall constants.-}

createWall :: (Int,Int)
           -> IO Picture 
createWall (xpos,ypos) = do
  bmp <- DBL.readFile "assets/wall_final.bmp"
  let parsedbmp = parseBMP bmp
  case parsedbmp of
    Left  _    -> return Blank
    Right fbmp -> return                                                  $
                  Rotate 180.0                                            $
                  Translate ((fromIntegral xpos :: Float) - (1120/2) + 4) 
                            ((fromIntegral ypos :: Float) - (1440/2) + 2) $
                  Bitmap (bitmapDataOfBMP fbmp) 

{-----------------}

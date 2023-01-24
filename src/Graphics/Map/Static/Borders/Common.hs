module Graphics.Map.Static.Borders.Common where

import Codec.BMP (readBMP,parseBMP)
import Data.ByteString.Lazy as DBL (readFile)
import Graphics.Gloss.Data.Bitmap
import Graphics.Gloss.Data.Picture


{-Top border constants.-}

createBorder :: (Int,Int)
             -> IO Picture 
createBorder (xpos,ypos) = do
  bmp <- DBL.readFile "assets/wall_final.bmp" 
  let parsedbmp = parseBMP bmp
  case parsedbmp of 
    Left  _    -> do putStrLn "error."
                     return Blank
    Right fbmp -> return                                                  $
                  Rotate 180.0                                            $
                  Translate ((fromIntegral xpos :: Float) - (1120/2) + 4) 
                            ((fromIntegral ypos :: Float) - (1440/2) + 3) $
                  Bitmap (bitmapDataOfBMP fbmp)

{-----------------------}

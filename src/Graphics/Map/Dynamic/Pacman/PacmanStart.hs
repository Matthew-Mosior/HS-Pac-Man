module Graphics.Map.Dynamic.Pacman.PacmanStart where

import Codec.BMP (parseBMP)
import Data.ByteString.Lazy as DBL (readFile)
import Graphics.Gloss.Data.Bitmap
import Graphics.Gloss.Data.Picture


{-Define Pac-Man picture.-}

drawpacmans :: (Int,Int)
            -> IO Picture 
drawpacmans (xpos,ypos) = do
  bmp <- DBL.readFile "assets/largeb_pacman_start.bmp"
  let parsedbmp = parseBMP bmp
  case parsedbmp of
    Left  _    -> return Blank
    Right fbmp -> return                                                  $
                  Translate ((fromIntegral xpos :: Float) - (1120/2) + 4)
                            ((fromIntegral ypos :: Float) - (1440/2) + 3) $
                  Bitmap (bitmapDataOfBMP fbmp)

{-------------------------}

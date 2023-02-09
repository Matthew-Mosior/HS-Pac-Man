module Graphics.Map.Dynamic.Pacman.Pacman where

import Codec.BMP (parseBMP)
import Data.ByteString.Lazy as DBL (readFile)
import Graphics.Gloss.Data.Bitmap
import Graphics.Gloss.Data.Picture


{-Define Pac-Man starting position.-}

drawpacmanr :: (Int,Int)
            -> IO Picture 
drawpacmanr (xpos,ypos) = do
  bmp <- DBL.readFile "assets/largeb_pacman_right.bmp"
  let parsedbmp = parseBMP bmp
  case parsedbmp of
    Left  _    -> return Blank
    Right fbmp -> return                                                  $
                  Rotate 180.0                                            $
                  Translate ((fromIntegral xpos :: Float) - (1120/2) + 4)
                            ((fromIntegral ypos :: Float) - (1440/2) + 3) $
                  Bitmap (bitmapDataOfBMP fbmp)

{-----------------------------------}

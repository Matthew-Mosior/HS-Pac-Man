module Graphics.Map.Dynamic.Cookies.Common where

import Codec.BMP (parseBMP)
import Data.ByteString.Lazy as DBL (readFile)
import Graphics.Gloss.Data.Bitmap
import Graphics.Gloss.Data.Picture


{-Cookie constants.-}

createCookie :: (Int,Int)
             -> IO Picture
createCookie (xpos,ypos) = do
  bmp <- DBL.readFile "assets/largeb_cookie.bmp"
  let parsedbmp = parseBMP bmp
  case parsedbmp of
    Left  _    -> return Blank
    Right fbmp -> return                                                  $
                  Rotate 180.0                                            $
                  Translate ((fromIntegral xpos :: Float) - (1120/2) + 9)
                            ((fromIntegral ypos :: Float) - (1440/2) + 8) $
                  Bitmap (bitmapDataOfBMP fbmp)

{-------------------}

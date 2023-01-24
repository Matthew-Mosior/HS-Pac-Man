module Graphics.Map.Dynamic.Pacman.Pacman where

import Codec.BMP (parseBMP)
import Data.ByteString.Lazy as DBL (readFile)
import Graphics.Gloss.Data.Bitmap
import Graphics.Gloss.Data.Picture


{-Define Pac-Man character size.-}

pacmanSize :: Int
pacmanSize = 80

pacmanStartingCoor :: (Int,Int)
                   -> Rectangle
pacmanStartingCoor (x,y) = Rectangle ( (x*pacmanSize)
                                     , (y*pacmanSize)
                                     )
                                     ( pacmanSize
                                     , pacmanSize
                                     )

{--------------------------------}


{-Define Pac-Man starting position.-}

drawpacmanr :: (Int,Int)
            -> IO Picture 
drawpacmanr pos = do
  bmp <- DBL.readFile "assets/largeb_pacman_right.bmp"
  let parsedbmp = parseBMP bmp
  case parsedbmp of
    Left  _    -> return Blank 
    Right fbmp -> return $ BitmapSection (pacmanStartingCoor pos)
                                         (bitmapDataOfBMP fbmp)

{-----------------------------------}

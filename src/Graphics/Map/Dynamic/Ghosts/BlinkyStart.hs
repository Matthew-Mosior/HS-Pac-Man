module Graphics.Map.Dynamic.Ghosts.BlinkyStart where

import Application.LoadAssets

import Data.Massiv.Array as DMA
import Data.Massiv.Array.IO as DMAIO
import qualified Graphics.ColorModel as CM
import Graphics.Gloss.Raster.Massiv.Internal


{-Define Blinky array.-}

drawBlinkyS :: (Int,Int)
            -> IO ((Array S Ix2 ColorMassiv),(Int,Int))
drawBlinkyS (xpos,ypos) = do
  blinkyrgb <- loadBlinkyLeftAsset  
  blinkyrgbf <- DMA.traversePrim (\x -> return $ rgbMassiv8w ((\(a,_,_) -> a) $ toComponents $ pixelColor x)
                                                             ((\(_,b,_) -> b) $ toComponents $ pixelColor x)
                                                             ((\(_,_,c) -> c) $ toComponents $ pixelColor x)
                                 )
                blinkyrgb
  return (blinkyrgbf,(xpos,ypos))

{----------------------}

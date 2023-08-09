module Graphics.Map.Dynamic.Ghosts.PinkyStart where

import Application.LoadAssets

import Data.Massiv.Array as DMA
import Data.Massiv.Array.IO as DMAIO
import qualified Graphics.ColorModel as CM
import Graphics.Gloss.Raster.Massiv.Internal


{-Define Pinky array.-}

drawPinkyS :: (Int,Int)
           -> IO ((Array S Ix2 ColorMassiv),(Int,Int))
drawPinkyS (xpos,ypos) = do
  pinkyrgb <- loadPinkyDownAsset 
  pinkyrgbf <- DMA.traversePrim (\x -> return $ rgbMassiv8w ((\(a,_,_) -> a) $ toComponents $ pixelColor x)
                                                            ((\(_,b,_) -> b) $ toComponents $ pixelColor x)
                                                            ((\(_,_,c) -> c) $ toComponents $ pixelColor x)
                                )
               pinkyrgb
  return (pinkyrgbf,(xpos,ypos))

{---------------------}

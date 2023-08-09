module Graphics.Map.Static.Borders.Common where

import Application.LoadAssets

import Data.Massiv.Array as DMA
import Data.Massiv.Array.IO as DMAIO
import qualified Graphics.ColorModel as CM
import Graphics.Gloss.Raster.Massiv.Internal


{-Top border constants.-}

createBorder :: (Int,Int)
             -> IO ((Array S Ix2 ColorMassiv),(Int,Int))
createBorder (xpos,ypos) = do
  borderrgb <- loadBorderAsset
  borderrgbf <- DMA.traversePrim (\x -> return $ rgbMassiv8w ((\(a,_,_) -> a) $ toComponents $ pixelColor x)
                                                             ((\(_,b,_) -> b) $ toComponents $ pixelColor x)
                                                             ((\(_,_,c) -> c) $ toComponents $ pixelColor x)
                                 )
                borderrgb
  return (borderrgbf,(xpos,ypos))

{-----------------------}

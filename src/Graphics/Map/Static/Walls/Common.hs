module Graphics.Map.Static.Walls.Common where

import Application.LoadAssets

import Data.Massiv.Array as DMA
import Data.Massiv.Array.IO as DMAIO
import qualified Graphics.ColorModel as CM
import Graphics.Gloss.Raster.Massiv.Internal


{-Wall constants.-}

createWall :: (Int,Int)
           -> IO ((Array S Ix2 ColorMassiv),(Int,Int))
createWall (xpos,ypos) = do
  wallrgb <- loadWallAsset
  wallrgbf <- DMA.traversePrim (\x -> return $ rgbMassiv8w ((\(a,_,_) -> a) $ toComponents $ pixelColor x)
                                                           ((\(_,b,_) -> b) $ toComponents $ pixelColor x)
                                                           ((\(_,_,c) -> c) $ toComponents $ pixelColor x)
                               )
              wallrgb
  return (wallrgbf,(xpos,ypos))

{-----------------}

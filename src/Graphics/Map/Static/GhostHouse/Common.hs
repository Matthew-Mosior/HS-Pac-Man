module Graphics.Map.Static.GhostHouse.Common where

import Application.LoadAssets

import Data.Massiv.Array as DMA
import Data.Massiv.Array.IO as DMAIO
import qualified Graphics.ColorModel as CM
import Graphics.Gloss.Raster.Massiv.Internal


{-GhostHouse constants.-}

createGhostHouse :: (Int,Int)
                 -> IO ((Array S Ix2 ColorMassiv),(Int,Int))
createGhostHouse (xpos,ypos) = do
  ghosthousergb <- loadGhostHouseAsset  
  ghosthousergbf <- DMA.traversePrim (\x -> return $ rgbMassiv8w ((\(a,_,_) -> a) $ toComponents $ pixelColor x)
                                                                 ((\(_,b,_) -> b) $ toComponents $ pixelColor x)
                                                                 ((\(_,_,c) -> c) $ toComponents $ pixelColor x)
                                     )
                    ghosthousergb
  return (ghosthousergbf,(xpos,ypos))

{-----------------------}

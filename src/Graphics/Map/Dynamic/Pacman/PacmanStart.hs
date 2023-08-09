module Graphics.Map.Dynamic.Pacman.PacmanStart where

import Application.LoadAssets

import Data.Massiv.Array as DMA
import Data.Massiv.Array.IO as DMAIO
import qualified Graphics.ColorModel as CM
import Graphics.Gloss.Raster.Massiv.Internal


{-Define Pacman array.-}

drawPacmanS :: (Int,Int)
            -> IO ((Array S Ix2 ColorMassiv),(Int,Int))
drawPacmanS (xpos,ypos) = do
  pacmanrgb <- loadPacmanStartingAsset 
  pacmanrgbf <- DMA.traversePrim (\x -> return $ rgbMassiv8w ((\(a,_,_) -> a) $ toComponents $ pixelColor x)
                                                             ((\(_,b,_) -> b) $ toComponents $ pixelColor x)
                                                             ((\(_,_,c) -> c) $ toComponents $ pixelColor x)
                                 )
                pacmanrgb
  return (pacmanrgbf,(xpos,ypos))

{----------------------}

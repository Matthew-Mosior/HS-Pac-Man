module Graphics.Map.Dynamic.Cookies.Common where

import Application.LoadAssets

import Data.Massiv.Array as DMA
import Data.Massiv.Array.IO as DMAIO
import qualified Graphics.ColorModel as CM
import Graphics.Gloss.Raster.Massiv.Internal


{-Cookie constants.-}

createCookie :: IO (Array S Ix2 ColorMassiv)
createCookie = do
  cookiergb <- loadCookieAsset
  cookiergbf <- DMA.traversePrim (\x -> return $ rgbMassiv8w ((\(a,_,_) -> a) $ toComponents $ pixelColor x)
                                                             ((\(_,b,_) -> b) $ toComponents $ pixelColor x)
                                                             ((\(_,_,c) -> c) $ toComponents $ pixelColor x)
                                 )
                cookiergb
  return cookiergbf

createLargeCookie :: IO (Array S Ix2 ColorMassiv)
createLargeCookie = do
  largecookiergb <- loadLargeCookieAsset
  largecookiergbf <- DMA.traversePrim (\x -> return $ rgbMassiv8w ((\(a,_,_) -> a) $ toComponents $ pixelColor x)
                                                                  ((\(_,b,_) -> b) $ toComponents $ pixelColor x)
                                                                  ((\(_,_,c) -> c) $ toComponents $ pixelColor x)
                                      )
                     largecookiergb
  return largecookiergbf

createPowerCookie :: IO (Array S Ix2 ColorMassiv)
createPowerCookie = do
  powercookiergb <- loadPowerCookieAsset
  powercookiergbf <- DMA.traversePrim (\x -> return $ rgbMassiv8w ((\(a,_,_) -> a) $ toComponents $ pixelColor x)
                                                                  ((\(_,b,_) -> b) $ toComponents $ pixelColor x)
                                                                  ((\(_,_,c) -> c) $ toComponents $ pixelColor x)
                                      )
                     powercookiergb
  return powercookiergbf

{-----------------------}

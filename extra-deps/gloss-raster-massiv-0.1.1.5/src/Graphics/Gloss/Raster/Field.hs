{-# LANGUAGE BangPatterns                                #-}
{-# LANGUAGE DeriveDataTypeable                          #-}
{-# LANGUAGE DeriveGeneric                               #-}
{-# LANGUAGE FlexibleContexts                            #-}
{-# LANGUAGE MagicHash                                   #-}
{-# LANGUAGE MultiWayIf                                  #-}
{-# LANGUAGE PatternGuards                               #-}
{-# LANGUAGE ScopedTypeVariables                         #-}
{-# LANGUAGE TypeApplications                            #-}

-- |
-- Module      :  Graphics.Gloss.Raster.Field
-- Copyright   :  (c) Matthew Mosior 2023
-- License     :  BSD-style
-- Maintainer  :  mattm.github@gmail.com
-- Portability :  portable
--
-- = Massiv-based alternative for gloss-raster
--
-- This library utilizes [massiv](https://hackage.haskell.org/package/massiv-1.0.4.0)'s superb performance characteristics to supply alternative rasterization functionality to that which is provided by the [gloss-raster](https://hackage.haskell.org/package/gloss-raster) package.

module Graphics.Gloss.Raster.Field ( -- * Graphics.Gloss.Raster.Field Replacement functions - Display functions
                                     animateFieldMassiv,
                                     playFieldMassiv,
                                     animateFieldMassivIO,
                                     playFieldMassivIO,
                                     -- * Graphics.Gloss.Raster.Field Replacement functions - Frame creation
                                     makePicture,
                                     makeFrame,
                                     -- * Graphics.Gloss.Raster.Field Replacement functions - Size of Display
                                     sizeOfDisplay 
                                   ) where

import Graphics.Gloss.Raster.Massiv.Internal

import Data.Bits
import Data.Word
import Data.Massiv.Array as DMA
import Data.Massiv.Array.Unsafe as DMAU
import Debug.Trace
import Graphics.Gloss.Data.Picture
import Graphics.Gloss.Data.Display
import Graphics.Gloss.Data.Bitmap
import Graphics.Gloss.Interface.Pure.Game
import Graphics.Gloss.Interface.IO.Animate
import Graphics.Gloss.Interface.IO.Game
import Graphics.Gloss.Interface.Environment
import System.IO.Unsafe
import Unsafe.Coerce

-- | A more performant replacement of
-- [animateField](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html#v:animateField)
-- found in [Graphics.Gloss.Raster.Field](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html).
--
-- Animate a continuous 2D function from a Massiv array.
animateFieldMassiv :: Display                         -- ^ Display mode.
                   -> (Int,Int)                       -- ^ Number of pixels to draw per point.
                   -> (Float -> Point -> ColorMassiv) -- ^ Function to compute the color at a particular point.
                                                      --
                                                      --   It is passed the time in seconds since the program started,
                                                      --   and a point between (-1, -1) and (+1, +1).
                   -> IO ()
animateFieldMassiv display (zoomX, zoomY) makePixel =
  zoomX `seq` zoomY `seq`
  if | zoomX < 1 || zoomY < 1
     -> error $ "Graphics.Gloss.Raster.Field: invalid pixel scale factor"
                ++ show (zoomX, zoomY)
     | otherwise
     -> do (winSizeX, winSizeY) <- sizeOfDisplay display
           let  frame !time
                  = return
                    $ makePicture winSizeX winSizeY zoomX zoomY (makePixel time)
           animateFixedIO display black frame (const $ return ())
{-# INLINE animateFieldMassiv #-}

-- | A more performant replacement of
-- [animateFieldIO](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html#v:animateFieldIO)
-- found in [Graphics.Gloss.Raster.Field](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html).
--
-- Animate a continuous 2D function from a Massiv array, via the IO monad.
animateFieldMassivIO :: Display                              -- ^ Display mode.
                     -> (Int,Int)                            -- ^ Number of pixels to draw per point.
                     -> (Float -> IO (Point -> ColorMassiv)) -- ^ Function to compute the color at a particular point.
                                                             --
                                                             --   It is passed the time in seconds since the program started,
                                                             --   and a point between (-1, -1) and (+1, +1).
                     -> IO ()
animateFieldMassivIO display (zoomX, zoomY) makePixel =
  zoomX `seq` zoomY `seq`
  if | zoomX < 1 || zoomY < 1
     -> error $ "Graphics.Gloss.Raster.Field: invalid pixel scale factor"
                ++ show (zoomX, zoomY)
     | otherwise
     -> do (winSizeX, winSizeY) <- sizeOfDisplay display
           let  frame !time
                  = makePicture winSizeX winSizeY zoomX zoomY <$> makePixel time
           animateFixedIO display black frame (const $ return ())
{-# INLINE animateFieldMassivIO #-}

-- | A more performant replacement of
-- [playField](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html#v:playField)
-- found in [Graphics.Gloss.Raster.Field](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html).
--
-- Play a game with a continuous 2D function generated from a Massiv array.
playFieldMassiv :: Display                         -- ^ Display mode.
                -> (Int,Int)                       -- ^ Number of pixels to draw per point.
                -> Int                             -- ^ Number of simulation steps to take
                                                   --   for each second of real time
                -> world                           -- ^ The initial world.
                -> (world -> Point -> ColorMassiv) -- ^ Function to compute the color of the world at the given point.
                -> (Event -> world -> world)       -- ^ Function to handle input events.
                -> (Float -> world -> world)       -- ^ Function to step the world one iteration.
                                                   --   It is passed the time in seconds since the program started.
                -> IO ()
playFieldMassiv !display (zoomX, zoomY) !stepRate
                !initWorld !makePixel !handleEvent !stepWorld =
  zoomX `seq` zoomY `seq`
  if | zoomX < 1 || zoomY < 1
     -> error $ "Graphics.Gloss.Raster.Field: invalid pixel scale factor"
                ++ show (zoomX, zoomY)
     | otherwise
     -> do (winSizeX, winSizeY) <- sizeOfDisplay display
           winSizeX `seq` winSizeY `seq`
             play display black stepRate
                ((winSizeX, winSizeY), initWorld)
                (\((winSizeX', winSizeY'), world) ->
                   winSizeX' `seq` winSizeY' `seq` world `seq`
                   makePicture winSizeX' winSizeY' zoomX zoomY (makePixel world))
                (\event (winSize, world) ->
                   let winSize' =
                         case event of
                           EventResize dims -> dims
                           _                -> winSize
                   in (winSize', handleEvent event world))
                (fmap . stepWorld)
{-# INLINE playFieldMassiv #-}

-- | A more performant replacement of
-- [playFieldIO](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html#v:playFieldIO)
-- found in [Graphics.Gloss.Raster.Field](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html).
--
-- Play a game with a continuous 2D function generated from a Massiv array, via the IO monad.
playFieldMassivIO :: Display                              -- ^ Display mode.
                  -> (Int,Int)                            -- ^ Number of pixels to draw per point.
                  -> Int                                  -- ^ Number of simulation steps to take
                                                          --   for each second of real time
                  -> world                                -- ^ The initial world.
                  -> (world -> IO (Point -> ColorMassiv)) -- ^ Function to compute the color of the world at the given point.
                  -> (Event -> world -> IO world)         -- ^ Function to handle input events.
                  -> (Float -> world -> IO world)         -- ^ Function to step the world one iteration.
                                                          --   It is passed the time in seconds since the program started.
                  -> IO ()
playFieldMassivIO !display (zoomX, zoomY) !stepRate
                !initWorld !makePixel !handleEvent !stepWorld =
  zoomX `seq` zoomY `seq`
  if | zoomX < 1 || zoomY < 1
     -> error $ "Graphics.Gloss.Raster.Field: invalid pixel scale factor "
                ++ show (zoomX, zoomY)
     | otherwise
     -> do (winSizeX, winSizeY) <- sizeOfDisplay display
           winSizeX `seq` winSizeY `seq`
             playIO display black stepRate
                ((winSizeX, winSizeY), initWorld)
                (\((winSizeX', winSizeY'), world) ->
                   winSizeX' `seq` winSizeY' `seq` world `seq`
                   makePicture winSizeX' winSizeY' zoomX zoomY <$> makePixel world)
                (\event (winSize, world) ->
                   let winSize' =
                         case event of
                           EventResize dims -> dims
                           _                -> winSize
                   in (,) winSize' <$> handleEvent event world)
                (\time (winSize, world) -> (,) winSize <$> stepWorld time world)
{-# INLINE playFieldMassivIO #-}

-- | A more performant replacement of
-- [makePicture](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html#v:makePicture)
-- found in [Graphics.Gloss.Raster.Field](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html).
makePicture :: Int               -- Window Size X
            -> Int               -- Window Size Y
            -> Int               -- Pixels X
            -> Int               -- Pixels Y
            -> (Point -> ColorMassiv)
            -> Picture
makePicture !winSizeX !winSizeY !zoomX !zoomY !makePixel =
  let  -- Size of the raw image to render.
       sizeX = winSizeX `div` zoomX
       sizeY = winSizeY `div` zoomY

       {-# INLINE conv #-}
       conv (r, g, b)
        = let  r'      = fromIntegral r
               g'      = fromIntegral g
               b'      = fromIntegral b
               a       = 255

               !w      =   unsafeShiftL r' 24
                       .|. unsafeShiftL g' 16
                       .|. unsafeShiftL b' 8
                       .|. a
          in   w

   in unsafePerformIO $ do

        -- Define the image, and extract out just the RGB color components.
        -- We don't need the alpha because we're only drawing one image.
        traceEventIO "Gloss.Raster[makePicture]: start frame evaluation."
        (arrRGBTriplet :: Array DMA.S Ix2 RGBTriplet) <- makeFrame sizeX
                                                                   sizeY
                                                                   makePixel
        (arrRGB :: Array DMA.S Ix2 Word32) <- DMA.traversePrim (\x -> return $ conv ( (\(RGBTriplet a _ _) -> a) x
                                                                                    , (\(RGBTriplet _ b _) -> b) x
                                                                                    , (\(RGBTriplet _ _ c) -> c) x
                                                                                    )
                                                               )
                                              arrRGBTriplet
        traceEventIO "Gloss.Raster[makePicture]: done, returning picture."

        let arrRGBC = unsafeCoerce arrRGB :: Array DMA.S Ix2 Word8
        let arrRGBCFP = (\(a,_) -> a) $
                        DMAU.unsafeArrayToForeignPtr arrRGBC
        -- Wrap the ForeignPtr from the Array as a gloss picture.
        let picture
                = Scale (fromIntegral zoomX) (fromIntegral zoomY)
                $ bitmapOfForeignPtr
                        sizeX sizeY     -- raw image size
                        (BitmapFormat BottomToTop PxABGR)
                        arrRGBCFP       -- the image data.
                        False           -- don't cache this in texture memory.

        return picture
{-# INLINE makePicture #-}

-- | A more performant replacement of
-- [makeFrame](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html#v:makeFrame)
-- found in [Graphics.Gloss.Raster.Field](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Field.html).
makeFrame :: PrimMonad m
          => Int                  -- Array Size X
          -> Int                  -- Array Size Y
          -> (Point -> ColorMassiv)
          -> m (Array DMA.S Ix2 RGBTriplet)
makeFrame !sizeX !sizeY !makePixel = do
  let !pixelofindexarray = DMA.makeArray Par
                                         (Sz2 sizeY sizeX)
                                         (\(i :. j) -> pixelOfIndex (Ix2 j i)) :: Array DMA.S Ix2 ColorMassiv
  (!rgbtripletarray :: Array DMA.S Ix2 RGBTriplet) <- DMA.traversePrim (\x -> return $ unpackColorMassiv x) pixelofindexarray
  return rgbtripletarray
    where
      fsizeX, fsizeY  :: Float
      !fsizeX          = fromIntegral sizeX
      !fsizeY          = fromIntegral sizeY

      fsizeX2, fsizeY2 :: Float
      !fsizeX2        = fsizeX / 2
      !fsizeY2        = fsizeY / 2

       -- Midpoint of image.
      midX, midY :: Int
      !midX           = sizeX `div` 2
      !midY           = sizeY `div` 2
      
      {-# INLINE pixelOfIndex #-}
      pixelOfIndex (Ix2 y x)
       = let  x'      = fromIntegral (x - midX) / fsizeX2
              y'      = fromIntegral (y - midY) / fsizeY2
         in   makePixel (x',y')
{-# INLINE makeFrame #-}

-- | Float to Word8 conversion because the one in the GHC libraries
-- doesn't have enout specialisations and goes via Integer.
word8OfFloat :: Float
             -> Word8
word8OfFloat f
        = fromIntegral (truncate f :: Int)
{-# INLINE word8OfFloat #-}

-- | Function to unpack a ColorMassiv
-- into a triplet of Word8's (RGBTriplet).
unpackColorMassiv :: ColorMassiv
                  -> RGBTriplet
unpackColorMassiv c
        | (r,g,b,_) <- rgbaOfColorMassiv c
        = RGBTriplet (word8OfFloat (r * 255))
                     (word8OfFloat (g * 255))
                     (word8OfFloat (b * 255))
{-# INLINE unpackColorMassiv #-}

-- | Function that takes a display
-- and returns a tuple of the x and y scale.
sizeOfDisplay :: Display
              -> IO (Int,Int)
sizeOfDisplay display
 = case display of
        InWindow _ s _  -> return s
        FullScreen      -> getScreenSize
{-# INLINE sizeOfDisplay #-}

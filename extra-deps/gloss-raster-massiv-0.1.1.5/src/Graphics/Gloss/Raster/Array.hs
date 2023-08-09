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
-- Module      :  Graphics.Gloss.Raster.Array
-- Copyright   :  (c) Matthew Mosior 2023
-- License     :  BSD-style
-- Maintainer  :  mattm.github@gmail.com
-- Portability :  portable
--
-- = Massiv-based alternative for gloss-raster
--
-- This library utilizes [massiv](https://hackage.haskell.org/package/massiv-1.0.4.0)'s superb performance characteristics to supply alternative rasterization functionality to that which is provided by the [gloss-raster](https://hackage.haskell.org/package/gloss-raster) package.

module Graphics.Gloss.Raster.Array ( -- * Graphics.Gloss.Raster.Array Replacement functions - Display functions
                                     animateArrayMassiv,
                                     playArrayMassiv,
                                     animateArrayMassivIO,
                                     playArrayMassivIO,
                                     makeFrame,
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
-- [animateArray](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Array.html#v:animateArray)
-- found in [Graphics.Gloss.Raster.Array](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Array.html).
--
-- Animate a bitmap generated from a Massiv array.
animateArrayMassiv :: Display                                -- ^ Display mode.
                   -> (Int,Int)                              -- ^ Number of pixels to draw per element.
                   -> (Float -> Array DMA.S Ix2 ColorMassiv) -- ^ A function to construct a delayed array for the given time.
                                                             --   The function should return an array of the same extent each
                                                             --   time it is applied.
                                                             --
                                                             --   It is passed the time in seconds since the program started.
                   -> IO ()
animateArrayMassiv display scalemassiv@(scaleX, scaleY) makeMassivArray =
  scaleX `seq` scaleY `seq`
  if | scaleX < 1 || scaleY < 1
     -> error $ "Graphics.Gloss.Raster.Massiv.Array: invalid pixel scale factor "
                ++ show (scaleX,scaleY)
     | otherwise
     -> let {-# INLINE frame #-}
            frame !time          = return $ makeFrame scalemassiv (makeMassivArray time)
        in  animateFixedIO display black frame (const $ return ())
{-# INLINE animateArrayMassiv #-}

-- | A more performant replacement of
-- [animateArrayIO](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Array.html#v:animateArrayIO)
-- found in [Graphics.Gloss.Raster.Array](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Array.html).
--
-- Animate a bitmap generated from a Massiv array, via the IO monad.
animateArrayMassivIO :: Display                                     -- ^ Display mode.
                     -> (Int,Int)                                   -- ^ Number of pixels to draw per element.
                     -> (Float -> IO (Array DMA.S Ix2 ColorMassiv)) -- ^ A function to construct a delayed array for the given time.
                                                                    --   The function should return an array of the same extent each
                                                                    --   time it is applied.
                                                                    --
                                                                    --   It is passed the time in seconds since the program started.
                     -> IO ()
animateArrayMassivIO display scalemassiv@(scaleX, scaleY) makeMassivArray =
  scaleX `seq` scaleY `seq`
  if | scaleX < 1 || scaleY < 1
     -> error $ "Graphics.Gloss.Raster.Massiv.Array: invalid pixel scale factor "
                ++ show (scaleX,scaleY)
     | otherwise
     -> let {-# INLINE frame #-}
            frame !time          = fmap (makeFrame scalemassiv) (makeMassivArray time)
        in  animateFixedIO display black frame (const $ return ())
{-# INLINE animateArrayMassivIO #-}

-- | A more performant replacement of
-- [playArray](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Array.html#v:playArray)
-- found in [Graphics.Gloss.Raster.Array](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Array.html).
--
-- Play with a bitmap generated from a Massiv array.
playArrayMassiv :: Display                                -- ^ Display mode.
                -> (Int,Int)                              -- ^ Number of pixels to draw per element.
                -> Int                                    -- ^ Number of simulation steps to take
                                                          --   for each second of real time
                -> world                                  -- ^ The initial world.
                -> (world -> Array DMA.S Ix2 ColorMassiv) -- ^ Function to convert the world to an array.
                -> (Event -> world -> world)              -- ^ Function to handle input events.
                -> (Float -> world -> world)              -- ^ Function to step the world one iteration.
                                                          --   It is passed the time in seconds since the program started.
                -> IO ()
playArrayMassiv !display scalemassiv@(scaleX, scaleY) !stepRate
                !initWorld !makeMassivArray !handleEvent !stepWorld =
  scaleX `seq` scaleY `seq`
  if | scaleX < 1 || scaleY < 1
     -> error $ "Graphics.Gloss.Raster.Massiv.Array: invalid pixel scale factor "
                ++ show scalemassiv
     | otherwise
     -> let  {-# INLINE frame #-}
             frame !world    = makeFrame scalemassiv (makeMassivArray world)
        in   play display black
                     stepRate
                     initWorld
                     frame
                     handleEvent
                     stepWorld
{-# INLINE playArrayMassiv #-}

-- | A more performant replacement of
-- [playArrayIO](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Array.html#v:playArrayIO)
-- found in [Graphics.Gloss.Raster.Array](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Array.html).
--
-- Play with a bitmap generated from a Massiv array, via the IO monad.
playArrayMassivIO :: Display                                     -- ^ Display mode.
                  -> (Int,Int)                                   -- ^ Number of pixels to draw per element.
                  -> Int                                         -- ^ Number of simulation steps to take
                                                                 --   for each second of real time
                  -> world                                       -- ^ The initial world.
                  -> (world -> IO (Array DMA.S Ix2 ColorMassiv)) -- ^ Function to convert the world to an array.
                  -> (Event -> world -> IO world)                -- ^ Function to handle input events.
                  -> (Float -> world -> IO world)                -- ^ Function to step the world one iteration.
                                                                 --   It is passed the time in seconds since the program started.
                  -> IO ()
playArrayMassivIO !display scalemassiv@(scaleX, scaleY) !stepRate
                  !initWorld !makeMassivArray !handleEvent !stepWorld =
  scaleX `seq` scaleY `seq`
  if | scaleX < 1 || scaleY < 1
     -> error $ "Graphics.Gloss.Raster.Array: invalid pixel scale factor "
                ++ show scalemassiv
     | otherwise
     -> let  {-# INLINE frame #-}
             frame !world    = fmap (makeFrame scalemassiv) (makeMassivArray world)
        in  playIO display black
                     stepRate
                     initWorld
                     frame
                     handleEvent
                     stepWorld
{-# INLINE playArrayMassivIO #-}

-- | A more performant replacement of
-- [makeFrame](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Array.html)
-- found in [Graphics.Gloss.Raster.Array](https://hackage.haskell.org/package/gloss-raster-1.13.1.2/docs/Graphics-Gloss-Raster-Array.html).
makeFrame :: (Int,Int)
          -> Array DMA.S Ix2 ColorMassiv
          -> Picture
makeFrame (scaleX,scaleY) !array
 = let  -- Size of the array
        (Sz2 sizeY sizeX) = DMA.size array

        convColor :: ColorMassiv
                  -> Word32
        convColor colormassiv
         = let  (r,g,b) = unpackColorMassiv colormassiv
                r'      = fromIntegral r
                g'      = fromIntegral g
                b'      = fromIntegral b
                a       = 255
                !w      =  unsafeShiftL r' 24
                       .|. unsafeShiftL g' 16
                       .|. unsafeShiftL b' 8
                       .|. a
           in w
        {-# INLINE convColor #-}

   in unsafePerformIO $ do

        -- Define the image, and extract out just the RGB color components.
        -- We don't need the alpha because we're only drawing one image.
        traceEventIO "Gloss.Raster.Massiv[makeFrame]: start frame evaluation."
        (arrRGB :: Array DMA.S Ix2 Word32) <- DMA.traversePrim (\x -> return $ convColor x) array
        traceEventIO "Gloss.Raster.Massiv[makeFrame]: done, returning picture."

        let arrRGBC = unsafeCoerce arrRGB :: Array DMA.S Ix2 Word8
        let arrRGBCFP = (\(a,_) -> a) $
                        DMAU.unsafeArrayToForeignPtr arrRGBC
        -- Wrap the ForeignPtr from the Array as a gloss picture.
        let picture
                = Scale (fromIntegral scaleX) (fromIntegral scaleY)
                $ bitmapOfForeignPtr
                        sizeX sizeY     -- raw image size
                        (BitmapFormat BottomToTop PxABGR)
                        arrRGBCFP       -- the image data.
                        False           -- don't cache this in texture memory.

        return picture
{-# INLINE makeFrame #-}

-- | Float to Word8 conversion because the one in the GHC libraries
-- doesn't have enout specialisations and goes via Integer.
word8OfFloat :: Float
             -> Word8
word8OfFloat f
        = fromIntegral (truncate f :: Int)
{-# INLINE word8OfFloat #-}

-- | Function to unpack a ColorMassiv
-- into a triplet of Word8's.
unpackColorMassiv :: ColorMassiv
                  -> (Word8,Word8,Word8)
unpackColorMassiv c
        | (r,g,b,_) <- rgbaOfColorMassiv c
        = ( word8OfFloat (r * 255)
          , word8OfFloat (g * 255)
          , word8OfFloat (b * 255)
          )
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

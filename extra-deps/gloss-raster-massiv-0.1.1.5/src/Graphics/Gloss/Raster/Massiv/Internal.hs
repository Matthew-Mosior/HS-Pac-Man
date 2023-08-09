{-# LANGUAGE BangPatterns                                #-}
{-# LANGUAGE DeriveDataTypeable                          #-}
{-# LANGUAGE DeriveGeneric                               #-}
{-# LANGUAGE FlexibleContexts                            #-}
{-# LANGUAGE MagicHash                                   #-}
{-# LANGUAGE MultiWayIf                                  #-}
{-# LANGUAGE PatternGuards                               #-}
{-# LANGUAGE ScopedTypeVariables                         #-}
{-# LANGUAGE TypeApplications                            #-}
{-# OPTIONS_GHC -fplugin=Foreign.Storable.Generic.Plugin #-}

-- |
-- Module      :  Graphics.Gloss.Raster.Massiv.Internal
-- Copyright   :  (c) Matthew Mosior 2023
-- License     :  BSD-style
-- Maintainer  :  mattm.github@gmail.com
-- Portability :  portable
--
-- = WARNING
--
-- This module is considered __internal__.
--
-- The Package Versioning Policy __does not apply__.
--
-- The contents of this module may change __in any way whatsoever__
-- and __without any warning__ between minor versions of this package.
--
-- Authors importing this library are expected to track development
-- closely.
--
-- All credit goes to the author(s)/maintainer(s) of the
-- [containers](https://hackage.haskell.org/package/containers) library
-- for the above warning text.
--
-- = Description
--
-- This library utilizes [massiv](https://hackage.haskell.org/package/massiv-1.0.4.0)'s superb performance characteristics to supply alternative rasterization functionality to that which is provided by the [gloss-raster](https://hackage.haskell.org/package/gloss-raster) package.

module Graphics.Gloss.Raster.Massiv.Internal ( -- * Graphics.Gloss.Raster.Array Replacement functions - INTERNAL
                                               ColorMassiv(..),
                                               RGBTriplet(..),
                                               rgbMassiv,
                                               rgbMassivI,
                                               rgbMassiv8w,
                                               rgbMassiv',
                                               rgbMassivI',
                                               makeColorMassiv,
                                               makeColorMassivI,
                                               makeRawColorMassiv,
                                               makeRawColorMassivI,
                                               rgbaOfColorMassiv
                                             ) where

import Data.Data
import Data.Word
import Foreign.Storable.Generic
import Generics.Deriving.Base

-- | Custom [Color](https://hackage.haskell.org/package/gloss-rendering-1.13.1.1/docs/Graphics-Gloss-Rendering.html#t:Color) data type.
data ColorMassiv = RGBA !Float !Float !Float !Float
  deriving (Show,Eq,Data,Generic,Typeable)

instance Num ColorMassiv where
 (+) (RGBA r1 g1 b1 _) (RGBA r2 g2 b2 _)
        = RGBA (r1 + r2) (g1 + g2) (b1 + b2) 1
 {-# INLINE (+) #-}

 (-) (RGBA r1 g1 b1 _) (RGBA r2 g2 b2 _)
        = RGBA (r1 - r2) (g1 - g2) (b1 - b2) 1
 {-# INLINE (-) #-}

 (*) (RGBA r1 g1 b1 _) (RGBA r2 g2 b2 _)
        = RGBA (r1 * r2) (g1 * g2) (b1 * b2) 1
 {-# INLINE (*) #-}

 abs (RGBA r1 g1 b1 _)
        = RGBA (abs r1) (abs g1) (abs b1) 1
 {-# INLINE abs #-}

 signum (RGBA r1 g1 b1 _)
        = RGBA (signum r1) (signum g1) (signum b1) 1
 {-# INLINE signum #-}

 fromInteger i
  = let f = fromInteger i
    in  RGBA f f f 1
 {-# INLINE fromInteger #-}

instance GStorable ColorMassiv

-- | Custom data type for makeFrame function in @"Graphics.Gloss.Raster.Field"@.
data RGBTriplet = RGBTriplet Word8 Word8 Word8
  deriving (Show,Eq,Data,Generic,Typeable)

instance GStorable RGBTriplet

-- | Make a custom color. All components are clamped to the range  [0..1].
makeColorMassiv :: Float        -- ^ Red component.
                -> Float        -- ^ Green component.
                -> Float        -- ^ Blue component.
                -> Float        -- ^ Alpha component.
                -> ColorMassiv
makeColorMassiv r g b a
        = clampColorMassiv
        $ RGBA r g b a
{-# INLINE makeColorMassiv #-}

-- | Make a custom color. All components are clamped to the range [0..255].
makeColorMassivI :: Int
                 -> Int
                 -> Int
                 -> Int
                 -> ColorMassiv
makeColorMassivI r g b a
        = clampColorMassiv
        $ RGBA  (fromIntegral r / 255)
                (fromIntegral g / 255)
                (fromIntegral b / 255)
                (fromIntegral a / 255)
{-# INLINE makeColorMassivI #-}

-- | Make a custom color.
--
--   Using this function over `makeColor` avoids clamping the components,
--   which saves time. However, if the components are out of range then
--   this will result in integer overflow at rendering time, and the actual
--   picture you get will be implementation dependent.
--
--   You'll only need to use this function when using the @gloss-raster@
--   package that builds a new color for every pixel. If you're just working
--   with the Picture data type then it there is no need for raw colors.
makeRawColorMassiv :: Float
                   -> Float
                   -> Float
                   -> Float
                   -> ColorMassiv
makeRawColorMassiv r g b a
        = RGBA r g b a
{-# INLINE makeRawColorMassiv #-}

-- | Make a custom color, taking pre-clamped components.
makeRawColorMassivI :: Int
                    -> Int
                    -> Int
                    -> Int
                    -> ColorMassiv
makeRawColorMassivI r g b a
        = RGBA  (fromIntegral r / 255)
                (fromIntegral g / 255)
                (fromIntegral b / 255)
                (fromIntegral a / 255)
{-# INLINE makeRawColorMassivI #-}

-- | Take the RGBA components of a color.
rgbaOfColorMassiv :: ColorMassiv
                  -> (Float,Float,Float,Float)
rgbaOfColorMassiv (RGBA r g b a) = (r,g,b,a)
{-# INLINE rgbaOfColorMassiv #-}


-- | Clamp components of a raw color into the required range.
clampColorMassiv :: ColorMassiv
                 -> ColorMassiv
clampColorMassiv cc
 = let  (r,g,b,a)    = rgbaOfColorMassiv cc
        clamp x      = (min (max x 0.0) 1.0)
   in   RGBA (clamp r) (clamp g) (clamp b) (clamp a)

-- | Construct a color from red, green, blue components.
--
--   Each component is clamped to the range [0..1]
rgbMassiv :: Float
          -> Float
          -> Float
          -> ColorMassiv
rgbMassiv r g b = makeColorMassiv r g b 1.0
{-# INLINE rgbMassiv #-}

-- | Construct a color from red, green, blue components.
--
--   Each component is clamped to the range [0..255]
rgbMassivI :: Int
           -> Int
           -> Int
           -> ColorMassiv
rgbMassivI r g b = makeColorMassivI r g b 255
{-# INLINE rgbMassivI #-}

-- | Construct a color from red, green, blue components.
rgbMassiv8w :: Word8
            -> Word8
            -> Word8
            -> ColorMassiv
rgbMassiv8w r g b = makeRawColorMassivI (fromIntegral r) (fromIntegral g) (fromIntegral b) 255
{-# INLINE rgbMassiv8w #-}

-- | Like `rgb`, but take pre-clamped components for speed.
--
--   If you're building a new color for every pixel then use this version,
--   however if your components are out of range then the picture you get will
--   be implementation dependent.
rgbMassiv' :: Float
           -> Float
           -> Float
           -> ColorMassiv
rgbMassiv' r g b  = makeRawColorMassiv r g b 1.0
{-# INLINE rgbMassiv' #-}

-- | Like `rgbI`, but take pre-clamped components for speed.
--
--   If you're building a new color for every pixel then use this version,
--   however if your components are out of range then the picture you get will
--   be implementation dependent.
rgbMassivI' :: Int
            -> Int
            -> Int
            -> ColorMassiv
rgbMassivI' r g b = makeRawColorMassivI r g b 255
{-# INLINE rgbMassivI' #-}

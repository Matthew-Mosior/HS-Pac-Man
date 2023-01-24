module Main (main) where

import Graphics.Map.Map

import Graphics.Gloss

main :: IO ()
main = do
  createinitmap <- initmap
  display window black createinitmap

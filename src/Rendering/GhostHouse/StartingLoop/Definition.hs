module Rendering.GhostHouse.StartingLoop.Definition where

import GHC.Generics


data GHMovementDirection = GHUp
                         | GHDown
  deriving (Show,Eq,Generic)

data GHSLData = GHSLData { ghslnumber            :: [Int]
                         , ghslmovementdirection :: GHMovementDirection
                         , ghslup                :: Maybe [Int]
                         , ghsldown              :: Maybe [Int]
                         }
  deriving (Show,Eq,Generic)

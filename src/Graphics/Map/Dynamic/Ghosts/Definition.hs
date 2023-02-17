module Graphics.Map.Dynamic.Ghosts.Definition where

import GHC.Generics

data GhostDrawName = Blinky
                   | Pinky
                   | Inky
                   | Clyde
  deriving (Show,Eq,Generic)

data GhostDrawType = Start
                   | Up
                   | Down
                   | Left
                   | Right
  deriving (Show,Eq,Generic)

data GhostDrawData = GhostDrawData { ghostdrawname          :: GhostDrawName
                                   , ghostdrawtype          :: GhostDrawType
                                   , ghostdrawcoordinates   :: (Int,Int)
                                   , ghostcentercoordinates :: (Int,Int)
                                   }
  deriving (Show,Eq,Generic)

module Graphics.Map.Dynamic.Pacman.Definition where

import GHC.Generics


data PacmanDrawType = Start
                    | Up
                    | Down
                    | Left
                    | Right
  deriving (Show,Eq,Generic)

data PacmanDrawData = PacmanDrawData { pacmandrawtype          :: PacmanDrawType
                                     , pacmandrawcoordinates   :: (Int,Int)
                                     , pacmancentercoordinates :: (Int,Int)
                                     }
  deriving (Show,Eq,Generic)

module Game.Ghosts.Algo.AStar.Common where

import Data.Map.Strict as DMS


get :: (Ord k, Bounded a)
    => Map k a
    -> k
    -> a
get m x = DMS.findWithDefault maxBound x m

set :: Ord k
    => Map k a
    -> k
    -> a
    -> Map k a
set m k x = DMS.insert k x m

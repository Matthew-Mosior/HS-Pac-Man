module Game.Ghosts.GhostCoorToCookieCoor where

ghostCoorToCookieCoor :: (Int,Int)
                      -> (Int,Int)
ghostCoorToCookieCoor (gx,gy) = ((1120 - (20 + gx)) + 10,gy + 10)

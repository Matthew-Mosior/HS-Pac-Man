module Game.Pacman.PacmanCoorToCookieCoor where

pacmanCoorToCookieCoor :: (Int,Int)
                       -> (Int,Int)
pacmanCoorToCookieCoor (gx,gy) = ((1120 - (20 + gx)) + 10,gy + 10)

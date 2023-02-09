module Graphics.Map.Static.Tiles.TileToCookieCoor where

import Graphics.Map.Static.Tiles.Definition


{-Function to map a TileData to it's corresponding Cookies center coordinates.-}

tileToCenterCoor :: TileData
                 -> (Int,Int)
tileToCenterCoor td = do 
  let (tx,ty) = centercoordinates $
                cookiedata td
  (1120 - (20 + tx),ty)

{------------------------------------------------------------------------------}

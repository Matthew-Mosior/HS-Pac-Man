module Rendering.PreRenderMassivArray where


import Data.Massiv.Array as DMA
import Data.Massiv.Array.Mutable as DMAM
import Data.Maybe as DMaybe
import Data.Sequence as DSeq 
import Graphics.Gloss.Raster.Massiv.Internal


{-Function to construct pre-render massiv array.-}

constructPreRenderMassivArray :: Seq (Array S Ix2 ColorMassiv,(Int,Int))
                              -> MArray RealWorld S Ix2 ColorMassiv
                              -> IO (Array S Ix2 ColorMassiv)
constructPreRenderMassivArray Empty
                              finalprerendermarray = DMAM.freeze Par
                                                                 finalprerendermarray
constructPreRenderMassivArray ((currentarray,(currentarrayxpos,currentarrayypos)) :<| restofarrays)
                              prerendermarray = do
  let (Sz2 height width) = DMA.size currentarray
  prerendermarrayupdated <- traverseIndices prerendermarray
                                            (currentarray,(currentarrayxpos,currentarrayypos))
                                            (0,0)
                                            (currentarrayxpos,currentarrayypos)
                                            (Sz2 height width)
  constructPreRenderMassivArray restofarrays
                                prerendermarrayupdated
    where
      traverseIndices :: MArray RealWorld S Ix2 ColorMassiv
                      -> (Array S Ix2 ColorMassiv,(Int,Int))
                      -> (Int,Int)
                      -> (Int,Int)
                      -> Sz Ix2
                      -> IO (MArray RealWorld S Ix2 ColorMassiv)
      traverseIndices prerendermarray
                      (currentarray,(currentmarrayxpostracker,currentmarrayypostracker))
                      (currentarrayxpos,currentarrayypos)
                      (originalmarrayxpos,originalmarrayypos)
                      arraysize =
        if | (Sz2 (currentarrayxpos + 1) (currentarrayypos + 1)) == arraysize
           -> return prerendermarray
           | otherwise
           -> do let currentcolormassiv = case (DMA.index currentarray
                                                          (Ix2 currentarrayxpos currentarrayypos)
                                               ) of
                                            Nothing -> makeColorMassiv 0.0 0.0 0.0 1.0
                                            Just x  -> x 
                 DMAM.writeM prerendermarray
                             (Ix2 currentmarrayxpostracker currentmarrayypostracker)
                             currentcolormassiv
                 let nextarrayypos               = if | isJust $ DMA.index currentarray
                                                                           (Ix2 currentarrayxpos (currentarrayypos + 1))
                                                      -> currentarrayypos + 1
                                                      | otherwise
                                                      -> 0
                 let nextarrayxpos               = if | isNothing $ DMA.index currentarray
                                                                              (Ix2 currentarrayxpos (currentarrayypos + 1))
                                                      -> currentarrayxpos + 1
                                                      | otherwise
                                                      -> currentarrayxpos
                 let currentmarrayypostrackernew = if | isJust $ DMA.index currentarray
                                                                           (Ix2 currentarrayxpos (currentarrayypos + 1))
                                                      -> currentmarrayypostracker + 1
                                                      | otherwise
                                                      -> originalmarrayypos
                 let currentmarrayxpostrackernew = if | isNothing $ DMA.index currentarray
                                                                              (Ix2 currentarrayxpos (currentarrayypos + 1))
                                                      -> currentmarrayxpostracker + 1
                                                      | otherwise
                                                      -> currentmarrayxpostracker
                 traverseIndices prerendermarray
                                 (currentarray,(currentmarrayxpostrackernew,currentmarrayypostrackernew))
                                 (nextarrayxpos,nextarrayypos)
                                 (originalmarrayxpos,originalmarrayypos)
                                 arraysize

{------------------------------------------------}

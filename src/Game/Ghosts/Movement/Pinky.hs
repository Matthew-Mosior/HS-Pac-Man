module Game.Ghosts.Movement.Pinky where

import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.GhostCoorToCookieCoor
import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Definition

import Data.Sequence as Seq (filter,findIndexL,index,viewl,ViewL(..))


updatePinkyMovement :: PinkyState
                    -> PinkyState
updatePinkyMovement ps = do
  --Get the current tile center coordinates that pinky occupies.
  let pinkycurrentcc = ghostCoorToCookieCoor $
                       pinkycurrentposition ps
  let pinkycurrentt  = case (pinkycurrenttile ps) of
                         Nothing -> defaulttileastar 
                         Just ct -> ct
  let pinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> pinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                              Seq.EmptyL   -> False
                              (_ Seq.:< _) -> True
  if | pinkyincenteroftile
     -> do let pinkynexttileindex = case (Seq.findIndexL (\x -> (tilenumberastar x) == (tilenumberastar pinkycurrentt)) (pinkytargettileseq ps)) of
                                      Nothing -> (-1)
                                      Just i  -> i + 1
           if | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (pinkytargettileseq ps) `Seq.index` pinkynexttileindex) <=
                ((\(a,_) -> a)      $
                (\(x:_) -> x )      $
                tilecoordinateastar $
                pinkycurrentt)
              -> PinkyState { pinkycurrentmode      = pinkycurrentmode ps
                            , pinkycurrentdrawstate = if | (pinkycurrentdrawstate ps) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , pinkycurrentposition  = ( fst $ pinkycurrentposition ps
                                                      , (\x -> x - 1) $ fst $ pinkycurrentposition ps
                                                      )
                            , pinkycurrenttile      = pinkycurrenttile ps
                            , pinkytargettile       = pinkytargettile ps
                            , pinkytargettileseq    = pinkytargettileseq ps
                            , pinkycurrentdirection = Game.Types.Left
                            , pinkycurrentspeed     = pinkycurrentspeed ps
                            , pinkydotcounter       = pinkydotcounter ps
                            , pinkyghsl             = pinkyghsl ps
                            } 
              | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (pinkytargettileseq ps) `Seq.index` pinkynexttileindex) >=
                ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                pinkycurrentt)
              -> PinkyState { pinkycurrentmode      = pinkycurrentmode ps
                            , pinkycurrentdrawstate = if | (pinkycurrentdrawstate ps) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , pinkycurrentposition  = ( fst $ pinkycurrentposition ps
                                                      , (\x -> x + 1) $ fst $ pinkycurrentposition ps
                                                      )
                            , pinkycurrenttile      = pinkycurrenttile ps
                            , pinkytargettile       = pinkytargettile ps
                            , pinkytargettileseq    = pinkytargettileseq ps
                            , pinkycurrentdirection = Game.Types.Right
                            , pinkycurrentspeed     = pinkycurrentspeed ps
                            , pinkydotcounter       = pinkydotcounter ps
                            , pinkyghsl             = pinkyghsl ps
                            }
              | ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (pinkytargettileseq ps) `Seq.index` pinkynexttileindex) <=
                ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                pinkycurrentt)
              -> PinkyState { pinkycurrentmode      = pinkycurrentmode ps
                            , pinkycurrentdrawstate = if | (pinkycurrentdrawstate ps) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , pinkycurrentposition  = ( fst $ pinkycurrentposition ps
                                                      , (\y -> y + 1) $ snd $ pinkycurrentposition ps
                                                      )
                            , pinkycurrenttile      = pinkycurrenttile ps
                            , pinkytargettile       = pinkytargettile ps
                            , pinkytargettileseq    = pinkytargettileseq ps
                            , pinkycurrentdirection = Down
                            , pinkycurrentspeed     = pinkycurrentspeed ps
                            , pinkydotcounter       = pinkydotcounter ps
                            , pinkyghsl             = pinkyghsl ps
                            }
              | otherwise
              -> PinkyState { pinkycurrentmode      = pinkycurrentmode ps
                            , pinkycurrentdrawstate = if | (pinkycurrentdrawstate ps) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , pinkycurrentposition  = ( fst $ pinkycurrentposition ps
                                                      , (\y -> y - 1) $ snd $ pinkycurrentposition ps
                                                      )
                            , pinkycurrenttile      = pinkycurrenttile ps
                            , pinkytargettile       = pinkytargettile ps
                            , pinkytargettileseq    = pinkytargettileseq ps
                            , pinkycurrentdirection = Up
                            , pinkycurrentspeed     = pinkycurrentspeed ps
                            , pinkydotcounter       = pinkydotcounter ps
                            , pinkyghsl             = pinkyghsl ps
                            }
     | otherwise
     -> if | (pinkycurrentdirection ps) == Up
           -> PinkyState { pinkycurrentmode      = pinkycurrentmode ps
                         , pinkycurrentdrawstate = if | (pinkycurrentdrawstate ps) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , pinkycurrentposition  = ( fst $ pinkycurrentposition ps
                                                   , (\y -> y + 1) $ snd $ pinkycurrentposition ps
                                                   )
                         , pinkycurrenttile      = pinkycurrenttile ps
                         , pinkytargettile       = pinkytargettile ps
                         , pinkytargettileseq    = pinkytargettileseq ps
                         , pinkycurrentdirection = pinkycurrentdirection ps
                         , pinkycurrentspeed     = pinkycurrentspeed ps
                         , pinkydotcounter       = pinkydotcounter ps
                         , pinkyghsl             = pinkyghsl ps
                         }
           | (pinkycurrentdirection ps) == Down
           -> PinkyState { pinkycurrentmode      = pinkycurrentmode ps
                         , pinkycurrentdrawstate = if | (pinkycurrentdrawstate ps) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , pinkycurrentposition  = ( fst $ pinkycurrentposition ps
                                                   , (\y -> y - 1) $ snd $ pinkycurrentposition ps
                                                   )
                         , pinkycurrenttile      = pinkycurrenttile ps
                         , pinkytargettile       = pinkytargettile ps
                         , pinkytargettileseq    = pinkytargettileseq ps
                         , pinkycurrentdirection = pinkycurrentdirection ps
                         , pinkycurrentspeed     = pinkycurrentspeed ps
                         , pinkydotcounter       = pinkydotcounter ps
                         , pinkyghsl             = pinkyghsl ps
                         }
           | (pinkycurrentdirection ps) == Game.Types.Left
           -> PinkyState { pinkycurrentmode      = pinkycurrentmode ps
                         , pinkycurrentdrawstate = if | (pinkycurrentdrawstate ps) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , pinkycurrentposition  = ( (\x -> x - 1) $ fst $ pinkycurrentposition ps
                                                   , snd $ pinkycurrentposition ps
                                                   )
                         , pinkycurrenttile      = pinkycurrenttile ps
                         , pinkytargettile       = pinkytargettile ps
                         , pinkytargettileseq    = pinkytargettileseq ps
                         , pinkycurrentdirection = pinkycurrentdirection ps
                         , pinkycurrentspeed     = pinkycurrentspeed ps
                         , pinkydotcounter       = pinkydotcounter ps
                         , pinkyghsl             = pinkyghsl ps 
                         }
           | otherwise
           -> PinkyState { pinkycurrentmode      = pinkycurrentmode ps
                         , pinkycurrentdrawstate = if | (pinkycurrentdrawstate ps) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , pinkycurrentposition  = ( (\x -> x + 1) $ fst $ pinkycurrentposition ps
                                                   , snd $ pinkycurrentposition ps
                                                   )
                         , pinkycurrenttile      = pinkycurrenttile ps
                         , pinkytargettile       = pinkytargettile ps
                         , pinkytargettileseq    = pinkytargettileseq ps
                         , pinkycurrentdirection = pinkycurrentdirection ps
                         , pinkycurrentspeed     = pinkycurrentspeed ps
                         , pinkydotcounter       = pinkydotcounter ps
                         , pinkyghsl             = pinkyghsl ps
                         }

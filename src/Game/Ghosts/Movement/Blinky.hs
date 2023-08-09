module Game.Ghosts.Movement.Blinky where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.GhostCoorToCookieCoor
import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Definition

import Data.Sequence as Seq (filter,findIndexL,index,viewl,ViewL(..))


updateBlinkyMovement :: BlinkyState
                     -> BlinkyState
updateBlinkyMovement bs = do
  --Get the current tile center coordinates that blinky occupies.
  let blinkycurrentcc = ghostCoorToCookieCoor $
                        blinkycurrentposition bs
  let blinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> blinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                               Seq.EmptyL   -> False
                               (_ Seq.:< _) -> True
  if | blinkyincenteroftile
     -> do let blinkynexttileindex = case (Seq.findIndexL (\x -> (tilenumberastar x) == (tilenumberastar $ blinkycurrenttile bs)) (blinkytargettileseq bs)) of
                                       Nothing -> (-1)
                                       Just i  -> i + 1
           if | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (blinkytargettileseq bs) `Seq.index` blinkynexttileindex) <=
                ((\(a,_) -> a)      $
                (\(x:_) -> x )      $
                tilecoordinateastar $
                blinkycurrenttile bs)
              -> BlinkyState { blinkycurrentmode      = blinkycurrentmode bs
                             , blinkycurrentdrawstate = if | (blinkycurrentdrawstate bs) == GhostRegularDraw
                                                           -> GhostAltDraw
                                                           | otherwise
                                                           -> GhostRegularDraw
                             , blinkycurrentposition  = ( fst $ blinkycurrentposition bs
                                                        , (\x -> x - 1) $ fst $ blinkycurrentposition bs
                                                        )
                             , blinkycurrenttile      = blinkycurrenttile bs
                             , blinkytargettile       = blinkytargettile bs
                             , blinkytargettileseq    = blinkytargettileseq bs
                             , blinkycurrentdirection = Game.Types.Left
                             , blinkycurrentspeed     = blinkycurrentspeed bs
                             , blinkydotcounter       = blinkydotcounter bs
                             } 
              | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (blinkytargettileseq bs) `Seq.index` blinkynexttileindex) >=
                ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                blinkycurrenttile bs)
              -> BlinkyState { blinkycurrentmode      = blinkycurrentmode bs
                             , blinkycurrentdrawstate = if | (blinkycurrentdrawstate bs) == GhostRegularDraw
                                                           -> GhostAltDraw
                                                           | otherwise
                                                           -> GhostRegularDraw
                             , blinkycurrentposition  = ( fst $ blinkycurrentposition bs
                                                        , (\x -> x + 1) $ fst $ blinkycurrentposition bs
                                                        )
                             , blinkycurrenttile      = blinkycurrenttile bs
                             , blinkytargettile       = blinkytargettile bs
                             , blinkytargettileseq    = blinkytargettileseq bs
                             , blinkycurrentdirection = Game.Types.Right
                             , blinkycurrentspeed     = blinkycurrentspeed bs
                             , blinkydotcounter       = blinkydotcounter bs
                             }
              | ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (blinkytargettileseq bs) `Seq.index` blinkynexttileindex) <=
                ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                blinkycurrenttile bs)
              -> BlinkyState { blinkycurrentmode      = blinkycurrentmode bs
                             , blinkycurrentdrawstate = if | (blinkycurrentdrawstate bs) == GhostRegularDraw
                                                           -> GhostAltDraw
                                                           | otherwise
                                                           -> GhostRegularDraw
                             , blinkycurrentposition  = ( fst $ blinkycurrentposition bs
                                                        , (\y -> y + 1) $ snd $ blinkycurrentposition bs
                                                        )
                             , blinkycurrenttile      = blinkycurrenttile bs
                             , blinkytargettile       = blinkytargettile bs
                             , blinkytargettileseq    = blinkytargettileseq bs
                             , blinkycurrentdirection = Down
                             , blinkycurrentspeed     = blinkycurrentspeed bs
                             , blinkydotcounter       = blinkydotcounter bs
                             }
              | otherwise
              -> BlinkyState { blinkycurrentmode      = blinkycurrentmode bs
                             , blinkycurrentdrawstate = if | (blinkycurrentdrawstate bs) == GhostRegularDraw
                                                           -> GhostAltDraw
                                                           | otherwise
                                                           -> GhostRegularDraw
                             , blinkycurrentposition  = ( fst $ blinkycurrentposition bs
                                                        , (\y -> y - 1) $ snd $ blinkycurrentposition bs
                                                        )
                             , blinkycurrenttile      = blinkycurrenttile bs
                             , blinkytargettile       = blinkytargettile bs
                             , blinkytargettileseq    = blinkytargettileseq bs
                             , blinkycurrentdirection = Up
                             , blinkycurrentspeed     = blinkycurrentspeed bs
                             , blinkydotcounter       = blinkydotcounter bs
                             }
     | otherwise
     -> if | (blinkycurrentdirection bs) == Up
           -> BlinkyState { blinkycurrentmode      = blinkycurrentmode bs
                          , blinkycurrentdrawstate = if | (blinkycurrentdrawstate bs) == GhostRegularDraw
                                                        -> GhostAltDraw
                                                        | otherwise
                                                        -> GhostRegularDraw
                          , blinkycurrentposition  = ( fst $ blinkycurrentposition bs
                                                     , (\y -> y + 1) $ snd $ blinkycurrentposition bs
                                                     )
                          , blinkycurrenttile      = blinkycurrenttile bs
                          , blinkytargettile       = blinkytargettile bs
                          , blinkytargettileseq    = blinkytargettileseq bs
                          , blinkycurrentdirection = blinkycurrentdirection bs
                          , blinkycurrentspeed     = blinkycurrentspeed bs
                          , blinkydotcounter       = blinkydotcounter bs
                          }
           | (blinkycurrentdirection bs) == Down
           -> BlinkyState { blinkycurrentmode      = blinkycurrentmode bs
                          , blinkycurrentdrawstate = if | (blinkycurrentdrawstate bs) == GhostRegularDraw
                                                        -> GhostAltDraw
                                                        | otherwise
                                                        -> GhostRegularDraw
                          , blinkycurrentposition  = ( fst $ blinkycurrentposition bs
                                                     , (\y -> y - 1) $ snd $ blinkycurrentposition bs
                                                     )
                          , blinkycurrenttile      = blinkycurrenttile bs
                          , blinkytargettile       = blinkytargettile bs
                          , blinkytargettileseq    = blinkytargettileseq bs
                          , blinkycurrentdirection = blinkycurrentdirection bs
                          , blinkycurrentspeed     = blinkycurrentspeed bs
                          , blinkydotcounter       = blinkydotcounter bs
                          }
           | (blinkycurrentdirection bs) == Game.Types.Left
           -> BlinkyState { blinkycurrentmode      = blinkycurrentmode bs
                          , blinkycurrentdrawstate = if | (blinkycurrentdrawstate bs) == GhostRegularDraw
                                                        -> GhostAltDraw
                                                        | otherwise
                                                        -> GhostRegularDraw
                          , blinkycurrentposition  = ( (\x -> x - 1) $ fst $ blinkycurrentposition bs
                                                     , snd $ blinkycurrentposition bs
                                                     )
                          , blinkycurrenttile      = blinkycurrenttile bs
                          , blinkytargettile       = blinkytargettile bs
                          , blinkytargettileseq    = blinkytargettileseq bs
                          , blinkycurrentdirection = blinkycurrentdirection bs
                          , blinkycurrentspeed     = blinkycurrentspeed bs
                          , blinkydotcounter       = blinkydotcounter bs
                          }
           | otherwise
           -> BlinkyState { blinkycurrentmode      = blinkycurrentmode bs
                          , blinkycurrentdrawstate = if | (blinkycurrentdrawstate bs) == GhostRegularDraw
                                                        -> GhostAltDraw
                                                        | otherwise
                                                        -> GhostRegularDraw
                          , blinkycurrentposition  = ( (\x -> x + 1) $ fst $ blinkycurrentposition bs
                                                     , snd $ blinkycurrentposition bs
                                                     )
                          , blinkycurrenttile      = blinkycurrenttile bs
                          , blinkytargettile       = blinkytargettile bs
                          , blinkytargettileseq    = blinkytargettileseq bs
                          , blinkycurrentdirection = blinkycurrentdirection bs
                          , blinkycurrentspeed     = blinkycurrentspeed bs
                          , blinkydotcounter       = blinkydotcounter bs
                          }

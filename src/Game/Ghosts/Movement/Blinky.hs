module Game.Ghosts.Movement.Blinky where

import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.GhostCoorToCookieCoor
import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Definition

import Data.Sequence as Seq (filter,findIndexL,index,viewl,ViewL(..))


updateBlinkyMovement :: BlinkyState
                     -> BlinkyState
updateBlinkyMovement ps = do
  --Get the current tile center coordinates that blinky occupies.
  let blinkycurrentcc = ghostCoorToCookieCoor $
                        blinkycurrentposition ps
  let blinkyincenteroftile = case Seq.viewl (Seq.filter (\x -> blinkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                               Seq.EmptyL   -> False
                               (_ Seq.:< _) -> True
  if | blinkyincenteroftile
     -> do let blinkynexttileindex = case (Seq.findIndexL (\x -> (tilenumberastar x) == (tilenumberastar $ blinkycurrenttile ps)) (blinkytargettileseq ps)) of
                                       Nothing -> (-1)
                                       Just i  -> i + 1
           if | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (blinkytargettileseq ps) `Seq.index` blinkynexttileindex) <=
                ((\(a,_) -> a)      $
                (\(x:_) -> x )      $
                tilecoordinateastar $
                blinkycurrenttile ps)
              -> BlinkyState { blinkycurrentmode      = blinkycurrentmode ps
                             , blinkycurrentdrawstate = if | (blinkycurrentdrawstate ps) == GhostRegularDraw
                                                           -> GhostAltDraw
                                                           | otherwise
                                                           -> GhostRegularDraw
                             , blinkycurrentposition  = ( fst $ blinkycurrentposition ps
                                                        , (\x -> x - 1) $ fst $ blinkycurrentposition ps
                                                        )
                             , blinkycurrenttile      = blinkycurrenttile ps
                             , blinkytargettile       = blinkytargettile ps
                             , blinkytargettileseq    = blinkytargettileseq ps
                             , blinkycurrentdirection = Game.Types.Left
                             , blinkycurrentspeed     = blinkycurrentspeed ps
                             , blinkydotcounter       = blinkydotcounter ps
                             } 
              | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (blinkytargettileseq ps) `Seq.index` blinkynexttileindex) >=
                ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                blinkycurrenttile ps)
              -> BlinkyState { blinkycurrentmode      = blinkycurrentmode ps
                             , blinkycurrentdrawstate = if | (blinkycurrentdrawstate ps) == GhostRegularDraw
                                                           -> GhostAltDraw
                                                           | otherwise
                                                           -> GhostRegularDraw
                             , blinkycurrentposition  = ( fst $ blinkycurrentposition ps
                                                        , (\x -> x + 1) $ fst $ blinkycurrentposition ps
                                                        )
                             , blinkycurrenttile      = blinkycurrenttile ps
                             , blinkytargettile       = blinkytargettile ps
                             , blinkytargettileseq    = blinkytargettileseq ps
                             , blinkycurrentdirection = Game.Types.Right
                             , blinkycurrentspeed     = blinkycurrentspeed ps
                             , blinkydotcounter       = blinkydotcounter ps
                             }
              | ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (blinkytargettileseq ps) `Seq.index` blinkynexttileindex) <=
                ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                blinkycurrenttile ps)
              -> BlinkyState { blinkycurrentmode      = blinkycurrentmode ps
                             , blinkycurrentdrawstate = if | (blinkycurrentdrawstate ps) == GhostRegularDraw
                                                           -> GhostAltDraw
                                                           | otherwise
                                                           -> GhostRegularDraw
                             , blinkycurrentposition  = ( fst $ blinkycurrentposition ps
                                                        , (\y -> y + 1) $ snd $ blinkycurrentposition ps
                                                        )
                             , blinkycurrenttile      = blinkycurrenttile ps
                             , blinkytargettile       = blinkytargettile ps
                             , blinkytargettileseq    = blinkytargettileseq ps
                             , blinkycurrentdirection = Down
                             , blinkycurrentspeed     = blinkycurrentspeed ps
                             , blinkydotcounter       = blinkydotcounter ps
                             }
              | otherwise
              -> BlinkyState { blinkycurrentmode      = blinkycurrentmode ps
                             , blinkycurrentdrawstate = if | (blinkycurrentdrawstate ps) == GhostRegularDraw
                                                           -> GhostAltDraw
                                                           | otherwise
                                                           -> GhostRegularDraw
                             , blinkycurrentposition  = ( fst $ blinkycurrentposition ps
                                                        , (\y -> y - 1) $ snd $ blinkycurrentposition ps
                                                        )
                             , blinkycurrenttile      = blinkycurrenttile ps
                             , blinkytargettile       = blinkytargettile ps
                             , blinkytargettileseq    = blinkytargettileseq ps
                             , blinkycurrentdirection = Up
                             , blinkycurrentspeed     = blinkycurrentspeed ps
                             , blinkydotcounter       = blinkydotcounter ps
                             }
     | otherwise
     -> if | (blinkycurrentdirection ps) == Up
           -> BlinkyState { blinkycurrentmode      = blinkycurrentmode ps
                          , blinkycurrentdrawstate = if | (blinkycurrentdrawstate ps) == GhostRegularDraw
                                                        -> GhostAltDraw
                                                        | otherwise
                                                        -> GhostRegularDraw
                          , blinkycurrentposition  = ( fst $ blinkycurrentposition ps
                                                     , (\y -> y + 1) $ snd $ blinkycurrentposition ps
                                                     )
                          , blinkycurrenttile      = blinkycurrenttile ps
                          , blinkytargettile       = blinkytargettile ps
                          , blinkytargettileseq    = blinkytargettileseq ps
                          , blinkycurrentdirection = blinkycurrentdirection ps
                          , blinkycurrentspeed     = blinkycurrentspeed ps
                          , blinkydotcounter       = blinkydotcounter ps
                          }
           | (blinkycurrentdirection ps) == Down
           -> BlinkyState { blinkycurrentmode      = blinkycurrentmode ps
                          , blinkycurrentdrawstate = if | (blinkycurrentdrawstate ps) == GhostRegularDraw
                                                        -> GhostAltDraw
                                                        | otherwise
                                                        -> GhostRegularDraw
                          , blinkycurrentposition  = ( fst $ blinkycurrentposition ps
                                                     , (\y -> y - 1) $ snd $ blinkycurrentposition ps
                                                     )
                          , blinkycurrenttile      = blinkycurrenttile ps
                          , blinkytargettile       = blinkytargettile ps
                          , blinkytargettileseq    = blinkytargettileseq ps
                          , blinkycurrentdirection = blinkycurrentdirection ps
                          , blinkycurrentspeed     = blinkycurrentspeed ps
                          , blinkydotcounter       = blinkydotcounter ps
                          }
           | (blinkycurrentdirection ps) == Game.Types.Left
           -> BlinkyState { blinkycurrentmode      = blinkycurrentmode ps
                          , blinkycurrentdrawstate = if | (blinkycurrentdrawstate ps) == GhostRegularDraw
                                                        -> GhostAltDraw
                                                        | otherwise
                                                        -> GhostRegularDraw
                          , blinkycurrentposition  = ( (\x -> x - 1) $ fst $ blinkycurrentposition ps
                                                     , snd $ blinkycurrentposition ps
                                                     )
                          , blinkycurrenttile      = blinkycurrenttile ps
                          , blinkytargettile       = blinkytargettile ps
                          , blinkytargettileseq    = blinkytargettileseq ps
                          , blinkycurrentdirection = blinkycurrentdirection ps
                          , blinkycurrentspeed     = blinkycurrentspeed ps
                          , blinkydotcounter       = blinkydotcounter ps
                          }
           | otherwise
           -> BlinkyState { blinkycurrentmode      = blinkycurrentmode ps
                          , blinkycurrentdrawstate = if | (blinkycurrentdrawstate ps) == GhostRegularDraw
                                                        -> GhostAltDraw
                                                        | otherwise
                                                        -> GhostRegularDraw
                          , blinkycurrentposition  = ( (\x -> x + 1) $ fst $ blinkycurrentposition ps
                                                     , snd $ blinkycurrentposition ps
                                                     )
                          , blinkycurrenttile      = blinkycurrenttile ps
                          , blinkytargettile       = blinkytargettile ps
                          , blinkytargettileseq    = blinkytargettileseq ps
                          , blinkycurrentdirection = blinkycurrentdirection ps
                          , blinkycurrentspeed     = blinkycurrentspeed ps
                          , blinkydotcounter       = blinkydotcounter ps
                          }

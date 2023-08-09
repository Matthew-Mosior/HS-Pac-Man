module Game.Ghosts.Movement.Inky where

import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.GhostCoorToCookieCoor
import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Definition

import Data.Sequence as Seq (filter,findIndexL,index,viewl,ViewL(..))


updateInkyMovement :: InkyState
                    -> InkyState
updateInkyMovement is = do
  --Get the current tile center coordinates that inky occupies.
  let inkycurrentcc = ghostCoorToCookieCoor $
                      inkycurrentposition is
  let inkycurrentt  = case (inkycurrenttile is) of
                        Nothing -> defaulttileastar 
                        Just ct -> ct
  let inkyincenteroftile = case Seq.viewl (Seq.filter (\x -> inkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                             Seq.EmptyL   -> False
                             (_ Seq.:< _) -> True
  if | inkyincenteroftile
     -> do let inkynexttileindex = case (Seq.findIndexL (\x -> (tilenumberastar x) == (tilenumberastar inkycurrentt)) (inkytargettileseq is)) of
                                     Nothing -> (-1)
                                     Just i  -> i + 1
           if | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (inkytargettileseq is) `Seq.index` inkynexttileindex) <=
                ((\(a,_) -> a)      $
                (\(x:_) -> x )      $
                tilecoordinateastar $
                inkycurrentt)
              -> InkyState { inkycurrentmode      = inkycurrentmode is
                           , inkycurrentdrawstate = if | (inkycurrentdrawstate is) == GhostRegularDraw
                                                       -> GhostAltDraw
                                                       | otherwise
                                                       -> GhostRegularDraw
                           , inkycurrentposition  = ( fst $ inkycurrentposition is
                                                    , (\x -> x - 1) $ fst $ inkycurrentposition is
                                                    )
                           , inkycurrenttile      = inkycurrenttile is
                           , inkytargettile       = inkytargettile is
                           , inkytargettileseq    = inkytargettileseq is
                           , inkycurrentdirection = Game.Types.Left
                           , inkycurrentspeed     = inkycurrentspeed is
                           , inkydotcounter       = inkydotcounter is
                           , inkyghsl             = inkyghsl is
                           } 
              | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (inkytargettileseq is) `Seq.index` inkynexttileindex) >=
                ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                inkycurrentt)
              -> InkyState { inkycurrentmode      = inkycurrentmode is
                           , inkycurrentdrawstate = if | (inkycurrentdrawstate is) == GhostRegularDraw
                                                       -> GhostAltDraw
                                                       | otherwise
                                                       -> GhostRegularDraw
                           , inkycurrentposition  = ( fst $ inkycurrentposition is
                                                    , (\x -> x + 1) $ fst $ inkycurrentposition is
                                                    )
                           , inkycurrenttile      = inkycurrenttile is
                           , inkytargettile       = inkytargettile is
                           , inkytargettileseq    = inkytargettileseq is
                           , inkycurrentdirection = Game.Types.Right
                           , inkycurrentspeed     = inkycurrentspeed is
                           , inkydotcounter       = inkydotcounter is
                           , inkyghsl             = inkyghsl is
                           }
              | ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (inkytargettileseq is) `Seq.index` inkynexttileindex) <=
                ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                inkycurrentt)
              -> InkyState { inkycurrentmode      = inkycurrentmode is
                           , inkycurrentdrawstate = if | (inkycurrentdrawstate is) == GhostRegularDraw
                                                       -> GhostAltDraw
                                                       | otherwise
                                                       -> GhostRegularDraw
                           , inkycurrentposition  = ( fst $ inkycurrentposition is
                                                    , (\y -> y + 1) $ snd $ inkycurrentposition is
                                                    )
                           , inkycurrenttile      = inkycurrenttile is
                           , inkytargettile       = inkytargettile is
                           , inkytargettileseq    = inkytargettileseq is
                           , inkycurrentdirection = Down
                           , inkycurrentspeed     = inkycurrentspeed is
                           , inkydotcounter       = inkydotcounter is
                           , inkyghsl             = inkyghsl is
                           }
              | otherwise
              -> InkyState { inkycurrentmode      = inkycurrentmode is
                           , inkycurrentdrawstate = if | (inkycurrentdrawstate is) == GhostRegularDraw
                                                       -> GhostAltDraw
                                                       | otherwise
                                                       -> GhostRegularDraw
                           , inkycurrentposition  = ( fst $ inkycurrentposition is
                                                    , (\y -> y - 1) $ snd $ inkycurrentposition is
                                                    )
                           , inkycurrenttile      = inkycurrenttile is
                           , inkytargettile       = inkytargettile is
                           , inkytargettileseq    = inkytargettileseq is
                           , inkycurrentdirection = Up
                           , inkycurrentspeed     = inkycurrentspeed is
                           , inkydotcounter       = inkydotcounter is
                           , inkyghsl             = inkyghsl is
                           }
     | otherwise
     -> if | (inkycurrentdirection is) == Up
           -> InkyState { inkycurrentmode      = inkycurrentmode is
                        , inkycurrentdrawstate = if | (inkycurrentdrawstate is) == GhostRegularDraw
                                                    -> GhostAltDraw
                                                    | otherwise
                                                    -> GhostRegularDraw
                        , inkycurrentposition  = ( fst $ inkycurrentposition is
                                                 , (\y -> y + 1) $ snd $ inkycurrentposition is
                                                 )
                        , inkycurrenttile      = inkycurrenttile is
                        , inkytargettile       = inkytargettile is
                        , inkytargettileseq    = inkytargettileseq is
                        , inkycurrentdirection = inkycurrentdirection is
                        , inkycurrentspeed     = inkycurrentspeed is
                        , inkydotcounter       = inkydotcounter is
                        , inkyghsl             = inkyghsl is
                        }
           | (inkycurrentdirection is) == Down
           -> InkyState { inkycurrentmode      = inkycurrentmode is
                        , inkycurrentdrawstate = if | (inkycurrentdrawstate is) == GhostRegularDraw
                                                    -> GhostAltDraw
                                                    | otherwise
                                                    -> GhostRegularDraw
                        , inkycurrentposition  = ( fst $ inkycurrentposition is
                                                 , (\y -> y - 1) $ snd $ inkycurrentposition is
                                                 )
                        , inkycurrenttile      = inkycurrenttile is
                        , inkytargettile       = inkytargettile is
                        , inkytargettileseq    = inkytargettileseq is
                        , inkycurrentdirection = inkycurrentdirection is
                        , inkycurrentspeed     = inkycurrentspeed is
                        , inkydotcounter       = inkydotcounter is
                        , inkyghsl             = inkyghsl is
                        }
           | (inkycurrentdirection is) == Game.Types.Left
           -> InkyState { inkycurrentmode      = inkycurrentmode is
                        , inkycurrentdrawstate = if | (inkycurrentdrawstate is) == GhostRegularDraw
                                                    -> GhostAltDraw
                                                    | otherwise
                                                    -> GhostRegularDraw
                        , inkycurrentposition  = ( (\x -> x - 1) $ fst $ inkycurrentposition is
                                                 , snd $ inkycurrentposition is
                                                 )
                        , inkycurrenttile      = inkycurrenttile is
                        , inkytargettile       = inkytargettile is
                        , inkytargettileseq    = inkytargettileseq is
                        , inkycurrentdirection = inkycurrentdirection is
                        , inkycurrentspeed     = inkycurrentspeed is
                        , inkydotcounter       = inkydotcounter is
                        , inkyghsl             = inkyghsl is 
                        }
           | otherwise
           -> InkyState { inkycurrentmode      = inkycurrentmode is
                        , inkycurrentdrawstate = if | (inkycurrentdrawstate is) == GhostRegularDraw
                                                    -> GhostAltDraw
                                                    | otherwise
                                                    -> GhostRegularDraw
                        , inkycurrentposition  = ( (\x -> x + 1) $ fst $ inkycurrentposition is
                                                 , snd $ inkycurrentposition is
                                                 )
                        , inkycurrenttile      = inkycurrenttile is
                        , inkytargettile       = inkytargettile is
                        , inkytargettileseq    = inkytargettileseq is
                        , inkycurrentdirection = inkycurrentdirection is
                        , inkycurrentspeed     = inkycurrentspeed is
                        , inkydotcounter       = inkydotcounter is
                        , inkyghsl             = inkyghsl is
                        }

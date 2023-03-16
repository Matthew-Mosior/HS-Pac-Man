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
updateInkyMovement ps = do
  --Get the current tile center coordinates that inky occupies.
  let inkycurrentcc = ghostCoorToCookieCoor $
                      inkycurrentposition ps
  let inkycurrentt  = case (inkycurrenttile ps) of
                        Nothing -> defaulttileastar 
                        Just ct -> ct
  let inkyincenteroftile = case Seq.viewl (Seq.filter (\x -> inkycurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                             Seq.EmptyL   -> False
                             (_ Seq.:< _) -> True
  if | inkyincenteroftile
     -> do let inkynexttileindex = case (Seq.findIndexL (\x -> (tilenumberastar x) == (tilenumberastar inkycurrentt)) (inkytargettileseq ps)) of
                                     Nothing -> (-1)
                                     Just i  -> i + 1
           if | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (inkytargettileseq ps) `Seq.index` inkynexttileindex) <=
                ((\(a,_) -> a)      $
                (\(x:_) -> x )      $
                tilecoordinateastar $
                inkycurrentt)
              -> InkyState { inkycurrentmode      = inkycurrentmode ps
                           , inkycurrentdrawstate = if | (inkycurrentdrawstate ps) == GhostRegularDraw
                                                       -> GhostAltDraw
                                                       | otherwise
                                                       -> GhostRegularDraw
                           , inkycurrentposition  = ( fst $ inkycurrentposition ps
                                                    , (\x -> x - 1) $ fst $ inkycurrentposition ps
                                                    )
                           , inkycurrenttile      = inkycurrenttile ps
                           , inkytargettile       = inkytargettile ps
                           , inkytargettileseq    = inkytargettileseq ps
                           , inkycurrentdirection = Game.Types.Left
                           , inkycurrentspeed     = inkycurrentspeed ps
                           , inkydotcounter       = inkydotcounter ps
                           , inkyghsl             = inkyghsl ps
                           } 
              | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (inkytargettileseq ps) `Seq.index` inkynexttileindex) >=
                ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                inkycurrentt)
              -> InkyState { inkycurrentmode      = inkycurrentmode ps
                           , inkycurrentdrawstate = if | (inkycurrentdrawstate ps) == GhostRegularDraw
                                                       -> GhostAltDraw
                                                       | otherwise
                                                       -> GhostRegularDraw
                           , inkycurrentposition  = ( fst $ inkycurrentposition ps
                                                    , (\x -> x + 1) $ fst $ inkycurrentposition ps
                                                    )
                           , inkycurrenttile      = inkycurrenttile ps
                           , inkytargettile       = inkytargettile ps
                           , inkytargettileseq    = inkytargettileseq ps
                           , inkycurrentdirection = Game.Types.Right
                           , inkycurrentspeed     = inkycurrentspeed ps
                           , inkydotcounter       = inkydotcounter ps
                           , inkyghsl             = inkyghsl ps
                           }
              | ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (inkytargettileseq ps) `Seq.index` inkynexttileindex) <=
                ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                inkycurrentt)
              -> InkyState { inkycurrentmode      = inkycurrentmode ps
                           , inkycurrentdrawstate = if | (inkycurrentdrawstate ps) == GhostRegularDraw
                                                       -> GhostAltDraw
                                                       | otherwise
                                                       -> GhostRegularDraw
                           , inkycurrentposition  = ( fst $ inkycurrentposition ps
                                                    , (\y -> y + 1) $ snd $ inkycurrentposition ps
                                                    )
                           , inkycurrenttile      = inkycurrenttile ps
                           , inkytargettile       = inkytargettile ps
                           , inkytargettileseq    = inkytargettileseq ps
                           , inkycurrentdirection = Down
                           , inkycurrentspeed     = inkycurrentspeed ps
                           , inkydotcounter       = inkydotcounter ps
                           , inkyghsl             = inkyghsl ps
                           }
              | otherwise
              -> InkyState { inkycurrentmode      = inkycurrentmode ps
                           , inkycurrentdrawstate = if | (inkycurrentdrawstate ps) == GhostRegularDraw
                                                       -> GhostAltDraw
                                                       | otherwise
                                                       -> GhostRegularDraw
                           , inkycurrentposition  = ( fst $ inkycurrentposition ps
                                                    , (\y -> y - 1) $ snd $ inkycurrentposition ps
                                                    )
                           , inkycurrenttile      = inkycurrenttile ps
                           , inkytargettile       = inkytargettile ps
                           , inkytargettileseq    = inkytargettileseq ps
                           , inkycurrentdirection = Up
                           , inkycurrentspeed     = inkycurrentspeed ps
                           , inkydotcounter       = inkydotcounter ps
                           , inkyghsl             = inkyghsl ps
                           }
     | otherwise
     -> if | (inkycurrentdirection ps) == Up
           -> InkyState { inkycurrentmode      = inkycurrentmode ps
                        , inkycurrentdrawstate = if | (inkycurrentdrawstate ps) == GhostRegularDraw
                                                    -> GhostAltDraw
                                                    | otherwise
                                                    -> GhostRegularDraw
                        , inkycurrentposition  = ( fst $ inkycurrentposition ps
                                                 , (\y -> y + 1) $ snd $ inkycurrentposition ps
                                                 )
                        , inkycurrenttile      = inkycurrenttile ps
                        , inkytargettile       = inkytargettile ps
                        , inkytargettileseq    = inkytargettileseq ps
                        , inkycurrentdirection = inkycurrentdirection ps
                        , inkycurrentspeed     = inkycurrentspeed ps
                        , inkydotcounter       = inkydotcounter ps
                        , inkyghsl             = inkyghsl ps
                        }
           | (inkycurrentdirection ps) == Down
           -> InkyState { inkycurrentmode      = inkycurrentmode ps
                        , inkycurrentdrawstate = if | (inkycurrentdrawstate ps) == GhostRegularDraw
                                                    -> GhostAltDraw
                                                    | otherwise
                                                    -> GhostRegularDraw
                        , inkycurrentposition  = ( fst $ inkycurrentposition ps
                                                 , (\y -> y - 1) $ snd $ inkycurrentposition ps
                                                 )
                        , inkycurrenttile      = inkycurrenttile ps
                        , inkytargettile       = inkytargettile ps
                        , inkytargettileseq    = inkytargettileseq ps
                        , inkycurrentdirection = inkycurrentdirection ps
                        , inkycurrentspeed     = inkycurrentspeed ps
                        , inkydotcounter       = inkydotcounter ps
                        , inkyghsl             = inkyghsl ps
                        }
           | (inkycurrentdirection ps) == Game.Types.Left
           -> InkyState { inkycurrentmode      = inkycurrentmode ps
                        , inkycurrentdrawstate = if | (inkycurrentdrawstate ps) == GhostRegularDraw
                                                    -> GhostAltDraw
                                                    | otherwise
                                                    -> GhostRegularDraw
                        , inkycurrentposition  = ( (\x -> x - 1) $ fst $ inkycurrentposition ps
                                                 , snd $ inkycurrentposition ps
                                                 )
                        , inkycurrenttile      = inkycurrenttile ps
                        , inkytargettile       = inkytargettile ps
                        , inkytargettileseq    = inkytargettileseq ps
                        , inkycurrentdirection = inkycurrentdirection ps
                        , inkycurrentspeed     = inkycurrentspeed ps
                        , inkydotcounter       = inkydotcounter ps
                        , inkyghsl             = inkyghsl ps 
                        }
           | otherwise
           -> InkyState { inkycurrentmode      = inkycurrentmode ps
                        , inkycurrentdrawstate = if | (inkycurrentdrawstate ps) == GhostRegularDraw
                                                    -> GhostAltDraw
                                                    | otherwise
                                                    -> GhostRegularDraw
                        , inkycurrentposition  = ( (\x -> x + 1) $ fst $ inkycurrentposition ps
                                                 , snd $ inkycurrentposition ps
                                                 )
                        , inkycurrenttile      = inkycurrenttile ps
                        , inkytargettile       = inkytargettile ps
                        , inkytargettileseq    = inkytargettileseq ps
                        , inkycurrentdirection = inkycurrentdirection ps
                        , inkycurrentspeed     = inkycurrentspeed ps
                        , inkydotcounter       = inkydotcounter ps
                        , inkyghsl             = inkyghsl ps
                        }

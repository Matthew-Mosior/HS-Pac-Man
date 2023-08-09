module Game.Ghosts.Movement.Clyde where

import Game.Ghosts.Algo.AStar.Tiles.Default
import Game.Types
import Game.Ghosts.Algo.AStar.Tiles.Definition
import Game.Ghosts.GhostCoorToCookieCoor
import Graphics.Map.Static.Tiles.AllTileData
import Graphics.Map.Static.Tiles.Definition

import Data.Sequence as Seq (filter,findIndexL,index,viewl,ViewL(..))


updateClydeMovement :: ClydeState
                    -> ClydeState
updateClydeMovement cs = do
  --Get the current tile center coordinates that clyde occupies.
  let clydecurrentcc = ghostCoorToCookieCoor $
                       clydecurrentposition cs
  let clydecurrentt  = case (clydecurrenttile cs) of
                         Nothing -> defaulttileastar 
                         Just ct -> ct
  let clydeincenteroftile = case Seq.viewl (Seq.filter (\x -> clydecurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                              Seq.EmptyL   -> False
                              (_ Seq.:< _) -> True
  if | clydeincenteroftile
     -> do let clydenexttileindex = case (Seq.findIndexL (\x -> (tilenumberastar x) == (tilenumberastar clydecurrentt)) (clydetargettileseq cs)) of
                                      Nothing -> (-1)
                                      Just i  -> i + 1
           if | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (clydetargettileseq cs) `Seq.index` clydenexttileindex) <=
                ((\(a,_) -> a)      $
                (\(x:_) -> x )      $
                tilecoordinateastar $
                clydecurrentt)
              -> ClydeState { clydecurrentmode      = clydecurrentmode cs
                            , clydecurrentdrawstate = if | (clydecurrentdrawstate cs) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , clydecurrentposition  = ( fst $ clydecurrentposition cs
                                                      , (\x -> x - 1) $ fst $ clydecurrentposition cs
                                                      )
                            , clydecurrenttile      = clydecurrenttile cs
                            , clydetargettile       = clydetargettile cs
                            , clydetargettileseq    = clydetargettileseq cs
                            , clydecurrentdirection = Game.Types.Left
                            , clydecurrentspeed     = clydecurrentspeed cs
                            , clydedotcounter       = clydedotcounter cs
                            , clydeghsl             = clydeghsl cs
                            } 
              | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (clydetargettileseq cs) `Seq.index` clydenexttileindex) >=
                ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                clydecurrentt)
              -> ClydeState { clydecurrentmode      = clydecurrentmode cs
                            , clydecurrentdrawstate = if | (clydecurrentdrawstate cs) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , clydecurrentposition  = ( fst $ clydecurrentposition cs
                                                      , (\x -> x + 1) $ fst $ clydecurrentposition cs
                                                      )
                            , clydecurrenttile      = clydecurrenttile cs
                            , clydetargettile       = clydetargettile cs
                            , clydetargettileseq    = clydetargettileseq cs
                            , clydecurrentdirection = Game.Types.Right
                            , clydecurrentspeed     = clydecurrentspeed cs
                            , clydedotcounter       = clydedotcounter cs
                            , clydeghsl             = clydeghsl cs
                            }
              | ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (clydetargettileseq cs) `Seq.index` clydenexttileindex) <=
                ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                clydecurrentt)
              -> ClydeState { clydecurrentmode      = clydecurrentmode cs
                            , clydecurrentdrawstate = if | (clydecurrentdrawstate cs) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , clydecurrentposition  = ( fst $ clydecurrentposition cs
                                                      , (\y -> y + 1) $ snd $ clydecurrentposition cs
                                                      )
                            , clydecurrenttile      = clydecurrenttile cs
                            , clydetargettile       = clydetargettile cs
                            , clydetargettileseq    = clydetargettileseq cs
                            , clydecurrentdirection = Down
                            , clydecurrentspeed     = clydecurrentspeed cs
                            , clydedotcounter       = clydedotcounter cs
                            , clydeghsl             = clydeghsl cs
                            }
              | otherwise
              -> ClydeState { clydecurrentmode      = clydecurrentmode cs
                            , clydecurrentdrawstate = if | (clydecurrentdrawstate cs) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , clydecurrentposition  = ( fst $ clydecurrentposition cs
                                                      , (\y -> y - 1) $ snd $ clydecurrentposition cs
                                                      )
                            , clydecurrenttile      = clydecurrenttile cs
                            , clydetargettile       = clydetargettile cs
                            , clydetargettileseq    = clydetargettileseq cs
                            , clydecurrentdirection = Up
                            , clydecurrentspeed     = clydecurrentspeed cs
                            , clydedotcounter       = clydedotcounter cs
                            , clydeghsl             = clydeghsl cs
                            }
     | otherwise
     -> if | (clydecurrentdirection cs) == Up
           -> ClydeState { clydecurrentmode      = clydecurrentmode cs
                         , clydecurrentdrawstate = if | (clydecurrentdrawstate cs) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , clydecurrentposition  = ( fst $ clydecurrentposition cs
                                                   , (\y -> y + 1) $ snd $ clydecurrentposition cs
                                                   )
                         , clydecurrenttile      = clydecurrenttile cs
                         , clydetargettile       = clydetargettile cs
                         , clydetargettileseq    = clydetargettileseq cs
                         , clydecurrentdirection = clydecurrentdirection cs
                         , clydecurrentspeed     = clydecurrentspeed cs
                         , clydedotcounter       = clydedotcounter cs
                         , clydeghsl             = clydeghsl cs
                         }
           | (clydecurrentdirection cs) == Down
           -> ClydeState { clydecurrentmode      = clydecurrentmode cs
                         , clydecurrentdrawstate = if | (clydecurrentdrawstate cs) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , clydecurrentposition  = ( fst $ clydecurrentposition cs
                                                   , (\y -> y - 1) $ snd $ clydecurrentposition cs
                                                   )
                         , clydecurrenttile      = clydecurrenttile cs
                         , clydetargettile       = clydetargettile cs
                         , clydetargettileseq    = clydetargettileseq cs
                         , clydecurrentdirection = clydecurrentdirection cs
                         , clydecurrentspeed     = clydecurrentspeed cs
                         , clydedotcounter       = clydedotcounter cs
                         , clydeghsl             = clydeghsl cs
                         }
           | (clydecurrentdirection cs) == Game.Types.Left
           -> ClydeState { clydecurrentmode      = clydecurrentmode cs
                         , clydecurrentdrawstate = if | (clydecurrentdrawstate cs) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , clydecurrentposition  = ( (\x -> x - 1) $ fst $ clydecurrentposition cs
                                                   , snd $ clydecurrentposition cs
                                                   )
                         , clydecurrenttile      = clydecurrenttile cs
                         , clydetargettile       = clydetargettile cs
                         , clydetargettileseq    = clydetargettileseq cs
                         , clydecurrentdirection = clydecurrentdirection cs
                         , clydecurrentspeed     = clydecurrentspeed cs
                         , clydedotcounter       = clydedotcounter cs
                         , clydeghsl             = clydeghsl cs 
                         }
           | otherwise
           -> ClydeState { clydecurrentmode      = clydecurrentmode cs
                         , clydecurrentdrawstate = if | (clydecurrentdrawstate cs) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , clydecurrentposition  = ( (\x -> x + 1) $ fst $ clydecurrentposition cs
                                                   , snd $ clydecurrentposition cs
                                                   )
                         , clydecurrenttile      = clydecurrenttile cs
                         , clydetargettile       = clydetargettile cs
                         , clydetargettileseq    = clydetargettileseq cs
                         , clydecurrentdirection = clydecurrentdirection cs
                         , clydecurrentspeed     = clydecurrentspeed cs
                         , clydedotcounter       = clydedotcounter cs
                         , clydeghsl             = clydeghsl cs
                         }

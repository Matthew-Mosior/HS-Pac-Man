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
updateClydeMovement ps = do
  --Get the current tile center coordinates that clyde occupies.
  let clydecurrentcc = ghostCoorToCookieCoor $
                       clydecurrentposition ps
  let clydecurrentt  = case (clydecurrenttile ps) of
                         Nothing -> defaulttileastar 
                         Just ct -> ct
  let clydeincenteroftile = case Seq.viewl (Seq.filter (\x -> clydecurrentcc == (centercoordinates $ cookiedata x)) alltiledatainit) of
                              Seq.EmptyL   -> False
                              (_ Seq.:< _) -> True
  if | clydeincenteroftile
     -> do let clydenexttileindex = case (Seq.findIndexL (\x -> (tilenumberastar x) == (tilenumberastar clydecurrentt)) (clydetargettileseq ps)) of
                                      Nothing -> (-1)
                                      Just i  -> i + 1
           if | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (clydetargettileseq ps) `Seq.index` clydenexttileindex) <=
                ((\(a,_) -> a)      $
                (\(x:_) -> x )      $
                tilecoordinateastar $
                clydecurrentt)
              -> ClydeState { clydecurrentmode      = clydecurrentmode ps
                            , clydecurrentdrawstate = if | (clydecurrentdrawstate ps) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , clydecurrentposition  = ( fst $ clydecurrentposition ps
                                                      , (\x -> x - 1) $ fst $ clydecurrentposition ps
                                                      )
                            , clydecurrenttile      = clydecurrenttile ps
                            , clydetargettile       = clydetargettile ps
                            , clydetargettileseq    = clydetargettileseq ps
                            , clydecurrentdirection = Game.Types.Left
                            , clydecurrentspeed     = clydecurrentspeed ps
                            , clydedotcounter       = clydedotcounter ps
                            , clydeghsl             = clydeghsl ps
                            } 
              | ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (clydetargettileseq ps) `Seq.index` clydenexttileindex) >=
                ((\(a,_) -> a)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                clydecurrentt)
              -> ClydeState { clydecurrentmode      = clydecurrentmode ps
                            , clydecurrentdrawstate = if | (clydecurrentdrawstate ps) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , clydecurrentposition  = ( fst $ clydecurrentposition ps
                                                      , (\x -> x + 1) $ fst $ clydecurrentposition ps
                                                      )
                            , clydecurrenttile      = clydecurrenttile ps
                            , clydetargettile       = clydetargettile ps
                            , clydetargettileseq    = clydetargettileseq ps
                            , clydecurrentdirection = Game.Types.Right
                            , clydecurrentspeed     = clydecurrentspeed ps
                            , clydedotcounter       = clydedotcounter ps
                            , clydeghsl             = clydeghsl ps
                            }
              | ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                (clydetargettileseq ps) `Seq.index` clydenexttileindex) <=
                ((\(_,b) -> b)      $
                (\(x:_) -> x)       $
                tilecoordinateastar $
                clydecurrentt)
              -> ClydeState { clydecurrentmode      = clydecurrentmode ps
                            , clydecurrentdrawstate = if | (clydecurrentdrawstate ps) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , clydecurrentposition  = ( fst $ clydecurrentposition ps
                                                      , (\y -> y + 1) $ snd $ clydecurrentposition ps
                                                      )
                            , clydecurrenttile      = clydecurrenttile ps
                            , clydetargettile       = clydetargettile ps
                            , clydetargettileseq    = clydetargettileseq ps
                            , clydecurrentdirection = Down
                            , clydecurrentspeed     = clydecurrentspeed ps
                            , clydedotcounter       = clydedotcounter ps
                            , clydeghsl             = clydeghsl ps
                            }
              | otherwise
              -> ClydeState { clydecurrentmode      = clydecurrentmode ps
                            , clydecurrentdrawstate = if | (clydecurrentdrawstate ps) == GhostRegularDraw
                                                         -> GhostAltDraw
                                                         | otherwise
                                                         -> GhostRegularDraw
                            , clydecurrentposition  = ( fst $ clydecurrentposition ps
                                                      , (\y -> y - 1) $ snd $ clydecurrentposition ps
                                                      )
                            , clydecurrenttile      = clydecurrenttile ps
                            , clydetargettile       = clydetargettile ps
                            , clydetargettileseq    = clydetargettileseq ps
                            , clydecurrentdirection = Up
                            , clydecurrentspeed     = clydecurrentspeed ps
                            , clydedotcounter       = clydedotcounter ps
                            , clydeghsl             = clydeghsl ps
                            }
     | otherwise
     -> if | (clydecurrentdirection ps) == Up
           -> ClydeState { clydecurrentmode      = clydecurrentmode ps
                         , clydecurrentdrawstate = if | (clydecurrentdrawstate ps) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , clydecurrentposition  = ( fst $ clydecurrentposition ps
                                                   , (\y -> y + 1) $ snd $ clydecurrentposition ps
                                                   )
                         , clydecurrenttile      = clydecurrenttile ps
                         , clydetargettile       = clydetargettile ps
                         , clydetargettileseq    = clydetargettileseq ps
                         , clydecurrentdirection = clydecurrentdirection ps
                         , clydecurrentspeed     = clydecurrentspeed ps
                         , clydedotcounter       = clydedotcounter ps
                         , clydeghsl             = clydeghsl ps
                         }
           | (clydecurrentdirection ps) == Down
           -> ClydeState { clydecurrentmode      = clydecurrentmode ps
                         , clydecurrentdrawstate = if | (clydecurrentdrawstate ps) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , clydecurrentposition  = ( fst $ clydecurrentposition ps
                                                   , (\y -> y - 1) $ snd $ clydecurrentposition ps
                                                   )
                         , clydecurrenttile      = clydecurrenttile ps
                         , clydetargettile       = clydetargettile ps
                         , clydetargettileseq    = clydetargettileseq ps
                         , clydecurrentdirection = clydecurrentdirection ps
                         , clydecurrentspeed     = clydecurrentspeed ps
                         , clydedotcounter       = clydedotcounter ps
                         , clydeghsl             = clydeghsl ps
                         }
           | (clydecurrentdirection ps) == Game.Types.Left
           -> ClydeState { clydecurrentmode      = clydecurrentmode ps
                         , clydecurrentdrawstate = if | (clydecurrentdrawstate ps) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , clydecurrentposition  = ( (\x -> x - 1) $ fst $ clydecurrentposition ps
                                                   , snd $ clydecurrentposition ps
                                                   )
                         , clydecurrenttile      = clydecurrenttile ps
                         , clydetargettile       = clydetargettile ps
                         , clydetargettileseq    = clydetargettileseq ps
                         , clydecurrentdirection = clydecurrentdirection ps
                         , clydecurrentspeed     = clydecurrentspeed ps
                         , clydedotcounter       = clydedotcounter ps
                         , clydeghsl             = clydeghsl ps 
                         }
           | otherwise
           -> ClydeState { clydecurrentmode      = clydecurrentmode ps
                         , clydecurrentdrawstate = if | (clydecurrentdrawstate ps) == GhostRegularDraw
                                                      -> GhostAltDraw
                                                      | otherwise
                                                      -> GhostRegularDraw
                         , clydecurrentposition  = ( (\x -> x + 1) $ fst $ clydecurrentposition ps
                                                   , snd $ clydecurrentposition ps
                                                   )
                         , clydecurrenttile      = clydecurrenttile ps
                         , clydetargettile       = clydetargettile ps
                         , clydetargettileseq    = clydetargettileseq ps
                         , clydecurrentdirection = clydecurrentdirection ps
                         , clydecurrentspeed     = clydecurrentspeed ps
                         , clydedotcounter       = clydedotcounter ps
                         , clydeghsl             = clydeghsl ps
                         }

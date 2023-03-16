module Graphics.Map.Dynamic.Cookies.DrawCookies where

import Data.Foldable (toList)
import Data.Maybe (isJust)
import Data.Traversable

import Graphics.Map.Dynamic.Cookies.Common
import Graphics.Map.Dynamic.Cookies.Definition
import Graphics.Map.Static.Tiles.Definition

import Graphics.Gloss.Data.Picture
import Data.Sequence as Seq (filter,(><),Seq(..))


{-Define the Picture that makes up all of the cookies on the map.-}

{-
drawCookies :: Seq CookieDrawData
            -> IO Picture
drawCookies allcookiedata = do
  --Grab and create cookies.
  let cookies = fmap cookiedrawcoordinates $ 
                DS.filter (\x -> (cookiedrawtype x) == Cookie
                          ) allcookiedata
  allcookiescreated <- sequence $ fmap createCookie cookies
  --Grab and create large cookies.
  let largecookies = fmap cookiedrawcoordinates $
                     DS.filter (\x -> (cookiedrawtype x) == LargeCookie
                               ) allcookiedata
  alllargecookiescreated <- sequence $ fmap createCookie largecookies
  return $ Pictures $
           toList   $
           alllargecookiescreated
           ><
           allcookiescreated
-}

drawCookies :: Seq TileData
            -> Seq CookieDrawData
            -> IO Picture
drawCookies td cdd = do
  --Grab the cookies to be drawn based off of cookietype field
  --(some cookies may have been eaten).
  let tileswithcookies  = Seq.filter (\t -> isJust $ cookietype $ cookiedata t)
                          td
  let currentallcookies = Seq.filter (\c -> (cookiedrawnumber c) `elem` (fmap tilenumber tileswithcookies))
                          cdd
  --Grab and create cookies.
  let cookies    = fmap cookiedrawcoordinates $
                   Seq.filter (\c -> (cookiedrawtype c) == Graphics.Map.Dynamic.Cookies.Definition.Cookie)
                   currentallcookies
  allcookiescreated <- sequence $ fmap createCookie cookies
  --Grab and create large cookies.
  let largecookies = fmap cookiedrawcoordinates $
                     Seq.filter (\c -> (cookiedrawtype c) == Graphics.Map.Dynamic.Cookies.Definition.LargeCookie)
                     currentallcookies
  alllargecookiescreated <- sequence $ fmap createCookie largecookies
  return $ Pictures $
           toList   $
           alllargecookiescreated
           ><
           allcookiescreated

{-----------------------------------------------------------------}

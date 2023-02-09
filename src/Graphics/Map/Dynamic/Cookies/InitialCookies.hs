module Graphics.Map.Dynamic.Cookies.InitialCookies where


import Data.Sequence as DS
import Data.Foldable (toList)
import Data.Traversable

import Graphics.Map.Dynamic.Cookies.Common
import Graphics.Map.Dynamic.Cookies.Definition

import Graphics.Gloss.Data.Picture


{-Define the Picture that makes up all of the cookies on the map.-}

allcookiesinit :: Seq CookieDrawData
               -> IO Picture
allcookiesinit allcookiedata = do
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

{-----------------------------------------------------------------}

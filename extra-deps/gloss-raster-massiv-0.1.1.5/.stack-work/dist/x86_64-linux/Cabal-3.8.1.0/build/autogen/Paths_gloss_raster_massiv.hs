{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_gloss_raster_massiv (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where


import qualified Control.Exception as Exception
import qualified Data.List as List
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude


#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,1,5] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath



bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "/home/matthewmosior/Software/local/Haskell/Pac-Man/From-ThinkPad/Pac-Man/gloss-implementation/hs-pac-man/.stack-work/install/x86_64-linux/558cea439606cc714ba3de0a029d022d9d7902132fd4664ee1d1129e22b22eb5/9.4.5/bin"
libdir     = "/home/matthewmosior/Software/local/Haskell/Pac-Man/From-ThinkPad/Pac-Man/gloss-implementation/hs-pac-man/.stack-work/install/x86_64-linux/558cea439606cc714ba3de0a029d022d9d7902132fd4664ee1d1129e22b22eb5/9.4.5/lib/x86_64-linux-ghc-9.4.5/gloss-raster-massiv-0.1.1.5-ExGNWBeE3Pc5nTsGzvBTrP"
dynlibdir  = "/home/matthewmosior/Software/local/Haskell/Pac-Man/From-ThinkPad/Pac-Man/gloss-implementation/hs-pac-man/.stack-work/install/x86_64-linux/558cea439606cc714ba3de0a029d022d9d7902132fd4664ee1d1129e22b22eb5/9.4.5/lib/x86_64-linux-ghc-9.4.5"
datadir    = "/home/matthewmosior/Software/local/Haskell/Pac-Man/From-ThinkPad/Pac-Man/gloss-implementation/hs-pac-man/.stack-work/install/x86_64-linux/558cea439606cc714ba3de0a029d022d9d7902132fd4664ee1d1129e22b22eb5/9.4.5/share/x86_64-linux-ghc-9.4.5/gloss-raster-massiv-0.1.1.5"
libexecdir = "/home/matthewmosior/Software/local/Haskell/Pac-Man/From-ThinkPad/Pac-Man/gloss-implementation/hs-pac-man/.stack-work/install/x86_64-linux/558cea439606cc714ba3de0a029d022d9d7902132fd4664ee1d1129e22b22eb5/9.4.5/libexec/x86_64-linux-ghc-9.4.5/gloss-raster-massiv-0.1.1.5"
sysconfdir = "/home/matthewmosior/Software/local/Haskell/Pac-Man/From-ThinkPad/Pac-Man/gloss-implementation/hs-pac-man/.stack-work/install/x86_64-linux/558cea439606cc714ba3de0a029d022d9d7902132fd4664ee1d1129e22b22eb5/9.4.5/etc"

getBinDir     = catchIO (getEnv "gloss_raster_massiv_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "gloss_raster_massiv_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "gloss_raster_massiv_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "gloss_raster_massiv_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "gloss_raster_massiv_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "gloss_raster_massiv_sysconfdir") (\_ -> return sysconfdir)




joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '/'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/'

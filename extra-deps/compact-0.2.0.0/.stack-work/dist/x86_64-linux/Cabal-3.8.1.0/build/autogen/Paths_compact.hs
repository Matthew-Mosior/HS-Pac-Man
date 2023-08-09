{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_compact (
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
version = Version [0,2,0,0] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath



bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "/home/matthewmosior/Software/local/Haskell/Pac-Man/hs-pac-man/.stack-work/install/x86_64-linux/1e5817ce9d489554e5f1f2c40c17353d350eadf976436c15ecb402b685394cb8/9.4.4/bin"
libdir     = "/home/matthewmosior/Software/local/Haskell/Pac-Man/hs-pac-man/.stack-work/install/x86_64-linux/1e5817ce9d489554e5f1f2c40c17353d350eadf976436c15ecb402b685394cb8/9.4.4/lib/x86_64-linux-ghc-9.4.4/compact-0.2.0.0-J1JvMAajqei4RXkaXWYzrD"
dynlibdir  = "/home/matthewmosior/Software/local/Haskell/Pac-Man/hs-pac-man/.stack-work/install/x86_64-linux/1e5817ce9d489554e5f1f2c40c17353d350eadf976436c15ecb402b685394cb8/9.4.4/lib/x86_64-linux-ghc-9.4.4"
datadir    = "/home/matthewmosior/Software/local/Haskell/Pac-Man/hs-pac-man/.stack-work/install/x86_64-linux/1e5817ce9d489554e5f1f2c40c17353d350eadf976436c15ecb402b685394cb8/9.4.4/share/x86_64-linux-ghc-9.4.4/compact-0.2.0.0"
libexecdir = "/home/matthewmosior/Software/local/Haskell/Pac-Man/hs-pac-man/.stack-work/install/x86_64-linux/1e5817ce9d489554e5f1f2c40c17353d350eadf976436c15ecb402b685394cb8/9.4.4/libexec/x86_64-linux-ghc-9.4.4/compact-0.2.0.0"
sysconfdir = "/home/matthewmosior/Software/local/Haskell/Pac-Man/hs-pac-man/.stack-work/install/x86_64-linux/1e5817ce9d489554e5f1f2c40c17353d350eadf976436c15ecb402b685394cb8/9.4.4/etc"

getBinDir     = catchIO (getEnv "compact_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "compact_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "compact_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "compact_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "compact_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "compact_sysconfdir") (\_ -> return sysconfdir)




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

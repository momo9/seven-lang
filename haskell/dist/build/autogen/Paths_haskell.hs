module Paths_haskell (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [1,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/chilchenchi/.cabal/bin"
libdir     = "/Users/chilchenchi/.cabal/lib/x86_64-osx-ghc-7.10.1/haske_HotUm2Ye6mjLmEWihcBSw6"
datadir    = "/Users/chilchenchi/.cabal/share/x86_64-osx-ghc-7.10.1/haskell-1.0"
libexecdir = "/Users/chilchenchi/.cabal/libexec"
sysconfdir = "/Users/chilchenchi/.cabal/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "haskell_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)

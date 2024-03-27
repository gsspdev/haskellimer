{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_haskellimer (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "haskellimer"
version :: Version
version = Version [0,1,0,0] []

synopsis :: String
synopsis = "a Haskell project for nullimers"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/gsspdev/haskellimer.git"

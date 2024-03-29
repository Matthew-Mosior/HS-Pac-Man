{- |
Module                  : Iris.Tool
Copyright               : (c) 2022 Dmitrii Kovanikov
SPDX-License-Identifier : MPL-2.0
Maintainer              : Dmitrii Kovanikov <kovanikov@gmail.com>
Stability               : Experimental
Portability             : Portable

Utilities to check required tools and their minimal version for a CLI app.

Sometimes, your CLI application

@since 0.0.0.0
-}
module Iris.Tool (
    -- * Requiring an executable
    need,
    Tool (..),
    ToolSelector (..),
    defaultToolSelector,

    -- * Tool requirements check
    ToolCheckResult (..),
    ToolCheckError (..),
    ToolCheckException (..),
    checkTool,
) where

import Control.Exception (Exception, throwIO)
import Control.Monad.IO.Class (MonadIO, liftIO)
import Data.Foldable (traverse_)
import Data.String (IsString (..))
import Data.Text (Text)
import System.Directory (findExecutable)
import System.Process (readProcess)

import qualified Data.Text as Text

{- |

@since 0.0.0.0
-}
data Tool = Tool
    { toolName :: Text
    -- ^ @since 0.0.0.0
    , toolSelector :: Maybe ToolSelector
    -- ^ @since 0.0.0.0
    }

{- |

@since 0.0.0.0
-}
instance IsString Tool where
    fromString :: String -> Tool
    fromString s =
        Tool
            { toolName = fromString s
            , toolSelector = Nothing
            }

{- |

@since 0.0.0.0
-}
data ToolSelector = ToolSelector
    { toolSelectorFunction :: Text -> Bool
    -- ^ @since 0.0.0.0
    , toolSelectorVersionArg :: Maybe Text
    -- ^ @since 0.0.0.0
    }

{- |

@since 0.0.0.0
-}
defaultToolSelector :: ToolSelector
defaultToolSelector =
    ToolSelector
        { toolSelectorFunction = const True
        , toolSelectorVersionArg = Nothing
        }

{- |

@since 0.0.0.0
-}
data ToolCheckResult
    = -- |
      --
      --     @since 0.1.0.0
      ToolCheckError ToolCheckError
    | -- |
      --
      --     @since 0.0.0.0
      ToolOk
    deriving stock
        ( Show
          -- ^ @since 0.0.0.0
        , Eq
          -- ^ @since 0.0.0.0
        )

{- |

@since 0.1.0.0
-}
data ToolCheckError
    = -- |
      --
      --     @since 0.1.0.0
      ToolNotFound Text
    | -- |
      --
      --     @since 0.1.0.0
      ToolWrongVersion Text
    deriving stock
        ( Show
          -- ^ @since 0.1.0.0
        , Eq
          -- ^ @since 0.1.0.0
        )

{- |

@since 0.0.0.0
-}
checkTool :: Tool -> IO ToolCheckResult
checkTool Tool{..} =
    findExecutable (Text.unpack toolName) >>= \case
        Nothing -> pure $ ToolCheckError $ ToolNotFound toolName
        Just exe -> case toolSelector of
            Nothing -> pure ToolOk
            Just ToolSelector{..} -> case toolSelectorVersionArg of
                Nothing -> pure ToolOk
                Just versionArg -> do
                    toolVersionOutput <- readProcess exe [Text.unpack versionArg] ""
                    let version = Text.strip $ Text.pack toolVersionOutput

                    if toolSelectorFunction version
                        then pure ToolOk
                        else pure $ ToolCheckError $ ToolWrongVersion version

{- | An exception thrown by 'need' when there's an error requiring a tool.

@since 0.1.0.0
-}
newtype ToolCheckException = ToolCheckException ToolCheckError
    deriving stock
        ( Show
          -- ^ @since 0.1.0.0
        )
    deriving newtype
        ( Eq
          -- ^ @since 0.1.0.0
        )
    deriving anyclass
        ( Exception
          -- ^ @since 0.1.0.0
        )

{- | Use this function to require specific CLI tools for your CLI application.

The function can be used in the beginning of each command in the following way:

@
app :: App ()
app = Iris.'Iris.Env.asksCliEnv' Iris.'Iris.Env.cliEnvCmd' >>= __\\case__
    Download url -> do
        Iris.'need' ["curl"]
        runDownload url
    Evaluate hs -> do
        Iris.'need' ["ghc", "cabal"]
        runEvaluate hs
@

__Throws:__ 'ToolCheckException' if can't find a tool or if it has wrong version.

@since 0.0.0.0
-}
need :: MonadIO m => [Tool] -> m ()
need = traverse_ $ \tool ->
    liftIO $
        checkTool tool >>= \case
            ToolOk -> pure ()
            ToolCheckError toolErr -> throwIO $ ToolCheckException toolErr

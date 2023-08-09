{-|
Module      : Foreign.Storable.Generic.Plugin.Internal.Helpers
Copyright   : (c) Mateusz Kłoczko, 2016
License     : MIT
Maintainer  : mateusz.p.kloczko@gmail.com
Stability   : experimental
Portability : GHC-only

Various helping functions.

-}
{-#LANGUAGE CPP#-}
module Foreign.Storable.Generic.Plugin.Internal.Helpers where

#if MIN_VERSION_GLASGOW_HASKELL(9,0,1,0)
import GHC.Core          (Bind(..),Expr(..), CoreExpr, CoreBind, CoreBndr, CoreProgram, Alt(..))
import GHC.Types.Literal (Literal(..))
import GHC.Types.Id      (isLocalId, isGlobalId,Id)
import GHC.Types.Var             (Var(..))
import GHC.Types.Name            (getOccName,mkOccName)
import GHC.Types.Name.Occurrence (OccName(..), occNameString)
import qualified GHC.Types.Name as N (varName)
import GHC.Types.SrcLoc (noSrcSpan)
import GHC.Types.Unique (getUnique)
import GHC.Driver.Main (hscCompileCoreExpr, getHscEnv)
#if MIN_VERSION_GLASGOW_HASKELL(9,2,0,0)
import GHC.Driver.Env.Types (HscEnv)
import GHC.Unit.Module.ModGuts (ModGuts(..))
#else
import GHC.Driver.Types (HscEnv,ModGuts(..))
#endif
import GHC.Core.Opt.Monad (CoreM)
#if MIN_VERSION_GLASGOW_HASKELL(9,6,0,0)
import GHC.Core.Opt.Pipeline.Types (CoreToDo(..))
#else
import GHC.Core.Opt.Monad (CoreToDo(..))
#endif
import GHC.Types.Basic (CompilerPhase(..))
import GHC.Core.Type (isAlgType, splitTyConApp_maybe)
import GHC.Core.TyCon (algTyConRhs, visibleDataCons)
import GHC.Builtin.Types   (intDataCon)
import GHC.Core.DataCon    (dataConWorkId,dataConOrigArgTys)
import GHC.Core.Make       (mkWildValBinder)
import GHC.Utils.Outputable (cat, ppr, SDoc, showSDocUnsafe)
import GHC.Core.Opt.Monad (putMsg, putMsgS)
#elif MIN_VERSION_GLASGOW_HASKELL(8,2,1,0)
import CoreSyn (Bind(..),Expr(..), CoreExpr, CoreBind, CoreProgram, Alt)
import Literal (Literal(..))
import Id  (isLocalId, isGlobalId,Id)
import Var (Var(..))
import Name (getOccName,mkOccName)
import OccName (OccName(..), occNameString)
import qualified Name as N (varName)
import SrcLoc (noSrcSpan)
import Unique (getUnique)
import HscMain (hscCompileCoreExpr)
import HscTypes (HscEnv,ModGuts(..))
import CoreMonad (CoreM,CoreToDo(..), getHscEnv)
import BasicTypes (CompilerPhase(..))
import Type (isAlgType, splitTyConApp_maybe)
import TyCon (algTyConRhs, visibleDataCons)
import TysWiredIn (intDataCon)
import DataCon    (dataConWorkId,dataConOrigArgTys)
import MkCore (mkWildValBinder)
import Outputable (cat, ppr, SDoc, showSDocUnsafe)
import CoreMonad (putMsg, putMsgS)
#endif



-- Used to get to compiled values
import GHCi.RemoteTypes

#if MIN_VERSION_GLASGOW_HASKELL(9,6,0,0)
import GHC.Types.Var (TyVarBinder(..), VarBndr(..))
import GHC.Core.TyCo.Rep (Type(..), scaledThing)
import GHC.Types.Var
#elif MIN_VERSION_GLASGOW_HASKELL(9,0,1,0)
import GHC.Types.Var (TyVarBinder(..), VarBndr(..))
import GHC.Core.TyCo.Rep (Type(..), TyBinder(..), TyCoBinder(..),scaledThing)
import GHC.Types.Var
#elif MIN_VERSION_GLASGOW_HASKELL(8,8,1,0)
import Var (TyVarBinder(..), VarBndr(..))
import TyCoRep (Type(..), TyBinder(..), TyCoBinder(..))
import Var
#elif MIN_VERSION_GLASGOW_HASKELL(8,2,1,0)
import Var (TyVarBndr(..), TyVarBinder)
import TyCoRep (Type(..), TyBinder(..))
import Var
#endif



import Unsafe.Coerce

import Data.List
import Data.Maybe
import Data.Either
import Control.Monad.IO.Class

#if MIN_VERSION_GLASGOW_HASKELL(9,6,0,0)
-- See 778c6adca2c995cd8a1b84394d4d5ca26b915dac
type TyBinder = PiTyBinder
type TyCoVarBinder = ForAllTyBinder
#endif


-- | Get ids from core bind.
getIdsBind :: CoreBind -> [Id]
getIdsBind (NonRec id _) = [id]
getIdsBind (Rec recs)    = map fst recs

-- | Get all expressions from a binding.
getExprsBind :: CoreBind -> [CoreExpr]
getExprsBind (NonRec _ e) = [e]
getExprsBind (Rec   recs) = map snd recs

-- | Get both identifiers and expressions from a binding.
getIdsExprsBind :: CoreBind -> [(Id,CoreExpr)]
getIdsExprsBind (NonRec id expr) = [(id,expr)]
getIdsExprsBind (Rec       recs) = recs

-- | Get all IDs from CoreExpr
getIdsExpr :: CoreExpr -> [Id]
getIdsExpr (Var id)          = [id]
getIdsExpr (App e1 e2)       = concat [getIdsExpr e1, getIdsExpr e2]
getIdsExpr (Lam id e)        = id : getIdsExpr e
-- Ids from bs are ignored, as they are supposed to appear in e argument.
getIdsExpr (Let bs e)        = concat [getIdsExpr e, concatMap getIdsExpr (getExprsBind bs)]
-- The case_binder is ignored - the evaluated expression might appear on the rhs of alts
getIdsExpr (Case e _ _ alts) = concat $ getIdsExpr e : map extractAlt alts
getIdsExpr (Cast e _)        = getIdsExpr e
getIdsExpr _                 = []

#if MIN_VERSION_GLASGOW_HASKELL(9,2,0,0)
extractAlt :: Alt CoreBndr -> [Id]
extractAlt (Alt _ac _bs expr) = getIdsExpr expr
#else
extractAlt :: (a, b, CoreExpr) -> [Id]
extractAlt (_, _, e_c) = getIdsExpr e_c
#endif


------------
-- others --
------------


-- | Takes first n characters out of occName
cutOccName :: Int -> OccName -> OccName
cutOccName n occ_name = mkOccName (occNameSpace occ_name) name_string
    where name_string = take n $ occNameString occ_name


-- HACK for type equality
-- | Equality for types
eqType :: Type -> Type -> Bool
eqType (TyVarTy v1) (TyVarTy v2) = v1 == v2
eqType (AppTy t1a t1b) (AppTy t2a t2b) = t1a `eqType` t2a && t1b `eqType` t2b
eqType (TyConApp tc1 ts1) (TyConApp tc2 ts2) = tc1 == tc2 && (and $ zipWith eqType ts1 ts2)
#if MIN_VERSION_GLASGOW_HASKELL(8,2,1,0)
eqType (ForAllTy tb1 t1)  (ForAllTy tb2 t2)  = tb1 `eqTyVarBind` tb2 && t1 `eqType` t2
#else
eqType (ForAllTy tb1 t1)  (ForAllTy tb2 t2)  = tb1 `eqTyBind` tb2 && t1 `eqType` t2
#endif
-- Not dealing with type coercions or casts.
eqType _ _                     = False

-- | Equality for type binders
eqTyBind :: TyBinder -> TyBinder -> Bool
#if MIN_VERSION_GLASGOW_HASKELL(8,2,1,0)
eqTyBind (Named tvb1) (Named tvb2) = tvb1 `eqTyVarBind` tvb2
#else
eqTyBind (Named t1 vis1) (Named t2 vis2) = t1 == t2 && vis1 == vis2
#endif
#if MIN_VERSION_GLASGOW_HASKELL(9,6,0,0)
eqTyBind (Anon t1 _) (Anon t2 _) = scaledThing t1 `eqType` scaledThing t2
#elif MIN_VERSION_GLASGOW_HASKELL(9,0,1,0)
eqTyBind (Anon _ t1) (Anon _ t2) = scaledThing t1 `eqType` scaledThing t2
#elif MIN_VERSION_GLASGOW_HASKELL(8,10,0,0)
eqTyBind (Anon _ t1) (Anon _ t2) = t1 `eqType` t2
#else
eqTyBind (Anon   t1) (Anon   t2) = t1 `eqType` t2
#endif
eqTyBind _ _ = False

#if MIN_VERSION_GLASGOW_HASKELL(8,8,1,0)
eqTyVarBind :: TyVarBinder -> TyVarBinder -> Bool
eqTyVarBind (Bndr t1 arg1) (Bndr t2 arg2) = t1 == t2
#elif MIN_VERSION_GLASGOW_HASKELL(8,2,1,0)
-- | Equality for type variable binders
eqTyVarBind :: TyVarBinder -> TyVarBinder -> Bool
eqTyVarBind (TvBndr t1 arg1) (TvBndr t2 arg2) = t1 == t2
#endif

-- | 'elem' function for types
elemType :: Type -> [Type] -> Bool
elemType t [] = False
elemType t (ot:ts) = (t `eqType` ot) || elemType t ts

#if MIN_VERSION_GLASGOW_HASKELL(8,8,1,0)
isProxy :: TyCoVarBinder -> Bool
isProxy (Bndr tycovar flag)
#elif MIN_VERSION_GLASGOW_HASKELL(8,2,1,0)
isProxy :: TyVarBinder -> Bool
isProxy (TvBndr tycovar flag)
#else
isProxy :: TyBinder -> Bool
isProxy (Anon t) = False
isProxy (Named tycovar flag)
#endif
    | isTyCoVar tycovar
#if   MIN_VERSION_GLASGOW_HASKELL(9,0,1,0)
    , FunTy _ _ bool star <- varType tycovar
#elif MIN_VERSION_GLASGOW_HASKELL(8,10,0,0)
    , FunTy _ bool star <- varType tycovar
#elif MIN_VERSION_GLASGOW_HASKELL(8,2,1,0)
    , FunTy bool star <- varType tycovar
#else
    , ForAllTy bool   star <- varType tycovar
#endif
    = True
    | otherwise = False


removeProxy :: Type -> Type
removeProxy t
    -- forall (proxy :: Bool -> *)
    | ForAllTy fall t1 <- t
#if   MIN_VERSION_GLASGOW_HASKELL(9,0,1,0)
    , FunTy _ _ ch   t2 <- t1
#elif MIN_VERSION_GLASGOW_HASKELL(8,10,0,0)
    , FunTy _  ch   t2 <- t1
#elif MIN_VERSION_GLASGOW_HASKELL(8,2,1,0)
    , FunTy    ch   t2 <- t1
#else
    , ForAllTy ch'   t2 <- t
    , Anon     ch       <- ch'
#endif
    , AppTy    pr   bl <- ch
    , TyConApp _ _ <- bl
    , isProxy fall
    = t2
    -- forall (proxy :: Bool -> *) b.
    | ForAllTy fall f2 <- t
    , ForAllTy b    t1 <- f2
#if   MIN_VERSION_GLASGOW_HASKELL(9,0,1,0)
    , FunTy _ _ ch   t2 <- t1
#elif MIN_VERSION_GLASGOW_HASKELL(8,10,0,0)
    , FunTy _  ch   t2 <- t1
#elif MIN_VERSION_GLASGOW_HASKELL(8,2,1,0)
    , FunTy    ch   t2 <- t1
#else
    , ForAllTy ch'   t2 <- t
    , Anon     ch       <- ch'
#endif
    , AppTy    pr   bl <- ch
    , TyConApp _ _ <- bl
    , isProxy fall
    = ForAllTy b t2
    -- forall b (proxy :: Bool -> *).
    | ForAllTy b    f2 <- t
    , ForAllTy fall t1 <- f2
#if   MIN_VERSION_GLASGOW_HASKELL(9,0,1,0)
    , FunTy _ _ ch   t2 <- t1
#elif MIN_VERSION_GLASGOW_HASKELL(8,10,0,0)
    , FunTy _  ch   t2 <- t1
#elif MIN_VERSION_GLASGOW_HASKELL(8,2,1,0)
    , FunTy    ch   t2 <- t1
#else
    , ForAllTy ch'  t2 <- t
    , Anon     ch      <- ch'
#endif
    , AppTy    pr   bl <- ch
    , TyConApp _ _ <- bl
    , isProxy fall
    = ForAllTy b t2
    | otherwise
    = t

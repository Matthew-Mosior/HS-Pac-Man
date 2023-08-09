{-|
Module      : Foreign.Storable.Generic.Plugin.Internal.Predicates
Copyright   : (c) Mateusz Kłoczko, 2016
License     : MIT
Maintainer  : mateusz.p.kloczko@gmail.com
Stability   : experimental
Portability : GHC-only

Predicates for finding GStorable identifiers, plus some others.

-}
{-#LANGUAGE CPP#-}
module Foreign.Storable.Generic.Plugin.Internal.Predicates
    (
    -- Predicates on identifiers
      isGStorableInstId
    , isSizeOfId
    , isAlignmentId
    , isPeekId
    , isPokeId
    , isSpecGStorableInstId
    , isSpecSizeOfId
    , isSpecAlignmentId
    , isSpecPeekId
    , isSpecPokeId
    , isChoiceSizeOfId
    , isChoiceAlignmentId
    , isChoicePeekId
    , isChoicePokeId
    , isOffsetsId
    -- Groups of above
    , isGStorableId
    , isGStorableMethodId
    -- Miscellanous
    , isNonRecBind
    , toIsBind
    , withTypeCheck
    )
where

-- -- Management of Core.
-- import CoreSyn (Bind(..),Expr(..), CoreExpr, CoreBind, CoreProgram, Alt)
-- import Literal (Literal(..))
-- import Id  (isLocalId, isGlobalId,Id)
-- import Var (Var(..))
-- import Name (getOccName,mkOccName)
-- import OccName (OccName(..), occNameString)
-- import qualified Name as N (varName, tcClsName)
-- import SrcLoc (noSrcSpan)
-- import Unique (getUnique)
-- -- Compilation pipeline stuff
-- import HscMain (hscCompileCoreExpr)
-- import HscTypes (HscEnv,ModGuts(..))
-- import CoreMonad (CoreM, CoreToDo(..), getHscEnv)
-- import BasicTypes (CompilerPhase(..))
-- -- Types
-- import Type (isAlgType, splitTyConApp_maybe)
-- import TyCon (TyCon,tyConName, algTyConRhs, visibleDataCons)
-- import TyCoRep (Type(..), TyBinder(..))
-- import TysWiredIn (intDataCon)
-- import DataCon    (dataConWorkId,dataConOrigArgTys)
--
-- import MkCore (mkWildValBinder)
-- -- Printing
-- import Outputable (cat, ppr, SDoc, showSDocUnsafe)
-- import CoreMonad (putMsg, putMsgS)

#if MIN_VERSION_GLASGOW_HASKELL(9,0,1,0)
import GHC.Core          (Bind(..),Expr(..), CoreExpr, CoreBind, CoreProgram, Alt)
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
import GHC.Types.Name (nameStableString)
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
import Name (nameStableString)
#endif

#if MIN_VERSION_GLASGOW_HASKELL(9,6,0,0)
import GHC.Types.Var (TyVarBinder(..), VarBndr(..))
import GHC.Core.TyCo.Rep (Type(..), scaledThing)
import GHC.Types.Var
#elif MIN_VERSION_GLASGOW_HASKELL(9,0,1,0)
import GHC.Types.Var (TyVarBinder(..), VarBndr(..))
import GHC.Core.TyCo.Rep (Type(..), scaledThing)
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

import Data.Maybe

import Foreign.Storable.Generic.Plugin.Internal.Helpers

#if MIN_VERSION_GLASGOW_HASKELL(9,6,0,0)
-- See 778c6adca2c995cd8a1b84394d4d5ca26b915dac
type TyBinder = PiTyBinder
type TyCoVarBinder = ForAllTyBinder
#endif

-- | Predicate used to find GStorable instances identifiers.
isGStorableInstId :: Id -> Bool
isGStorableInstId id =    cutted_occ_name == gstorable_dict_name
                       && cutted_occ_name2 /= gstorable'_dict_name
    where cutted_occ_name = cutOccName 11 $ getOccName (varName id)
          cutted_occ_name2 = cutOccName 12 $ getOccName (varName id)
          gstorable_dict_name = mkOccName N.varName "$fGStorable"
          gstorable'_dict_name = mkOccName N.varName "$fGStorable'"

-- | Predicate used to find gsizeOf identifiers
isSizeOfId :: Id -> Bool
isSizeOfId ident = getOccName (varName ident)    == mkOccName N.varName "$cgsizeOf"

-- | Predicate used to find galignment identifiers
isAlignmentId :: Id -> Bool
isAlignmentId ident = getOccName (varName ident) == mkOccName N.varName "$cgalignment"

-- | Predicate used to find gpeekByteOff identifiers
isPeekId :: Id -> Bool
isPeekId id = occStr == compared1
    where occStr     = nameStableString $ varName id
          compared1 = "$_in$$cgpeekByteOff"

-- | Predicate used to find gpeekByteOff identifiers
isPokeId :: Id -> Bool
isPokeId id = occStr == compared1
    where occStr     = nameStableString $ varName id
          compared1 = "$_in$$cgpokeByteOff"

--------------------------------------------
--GStorableChoice methods' identifiers    --
--------------------------------------------

-- | Predicate used to find chSizeOf identifiers
isChoiceSizeOfId :: Id -> Bool
isChoiceSizeOfId id = occStr == compared1 || occStr == compared2
    where occStr    = nameStableString $ varName id
          compared1 = "$_in$$s$fGStorableChoice'Falsea_$cchSizeOf"
          compared2 = "$_in$$s$fGStorableChoice'Truea_$cchSizeOf"

-- | Predicate used to find chAlignment identifiers
isChoiceAlignmentId :: Id -> Bool
isChoiceAlignmentId id = occStr == compared1 || occStr == compared2
    where occStr     = nameStableString $ varName id
          compared1 = "$_in$$s$fGStorableChoice'Falsea_$cchAlignment"
          compared2 = "$_in$$s$fGStorableChoice'Truea_$cchAlignment"

-- | Predicate used to find chPeekByteOff identifiers
isChoicePeekId :: Id -> Bool
isChoicePeekId id = compared1 == occStr || compared2 == occStr
    where occStr     = nameStableString $ varName id
          compared1 = "$_in$$s$fGStorableChoice'Falsea_$cchPeekByteOff"
          compared2 = "$_in$$s$fGStorableChoice'Truea_$cchPeekByteOff"

-- | Predicate used to find chPokeByteOff identifiers
isChoicePokeId :: Id -> Bool
isChoicePokeId id = compared1 == occStr || compared2 == occStr
    where occStr     = nameStableString $ varName id
          compared1 = "$_in$$s$fGStorableChoice'Falsea_$cchPokeByteOff"
          compared2 = "$_in$$s$fGStorableChoice'Truea_$cchPokeByteOff"


--------------------------------------------
--Specialized at instance definition site.--
--------------------------------------------

-- | Predicate used to find specialized GStorable instance identifiers
isSpecGStorableInstId :: Id -> Bool
isSpecGStorableInstId id = cutted_occ_name == gstorable_dict_name
                       && cutted_occ_name2 /= gstorable'_dict_name
    where cutted_occ_name = cutOccName 11 $ getOccName (varName id)
          cutted_occ_name2 = cutOccName 12 $ getOccName (varName id)
          gstorable_dict_name = mkOccName N.varName "$s$fGStorable"
          gstorable'_dict_name = mkOccName N.varName "$s$fGStorable'"

-- | Predicate used to find specialized gsizeOf identifiers
isSpecSizeOfId :: Id -> Bool
isSpecSizeOfId ident = getOccName (varName ident)    == mkOccName N.varName "$s$cgsizeOf"

-- | Predicate used to find specialized galignment identifiers
isSpecAlignmentId :: Id -> Bool
isSpecAlignmentId ident = getOccName (varName ident) == mkOccName N.varName "$s$cgalignment"

-- | Predicate used to find specialized gpeekByteOff identifiers
isSpecPeekId :: Id -> Bool
isSpecPeekId ident = getOccName (varName ident) == mkOccName N.varName "$s$cgpeekByteOff"

-- | Predicate used to find specialized gpokeByteOff identifiers
isSpecPokeId :: Id -> Bool
isSpecPokeId ident = getOccName (varName ident) == mkOccName N.varName "$s$cgpokeByteOff"


----------------------------
-- For offset calculation --
----------------------------

-- | Is offsets id.
isOffsetsId :: Id -> Bool
isOffsetsId id = getOccName (varName id) == mkOccName N.varName "offsets"

---------------------------
-- Groups of identifiers --
---------------------------

-- | Is a GStorable identifier
isGStorableId :: Id -> Bool
isGStorableId id = any ($ id) [ isSizeOfId, isAlignmentId, isPeekId
                             , isPokeId, isGStorableInstId
                             , isSpecSizeOfId, isSpecAlignmentId
                             , isSpecPeekId, isSpecPokeId
                             , isSpecGStorableInstId
#if MIN_VERSION_GLASGOW_HASKELL(8,8,1,0)
                             , isChoiceSizeOfId, isChoiceAlignmentId
                             , isChoicePeekId, isChoicePokeId
#endif
                             ]
-- | Is the id an GStorable method.
isGStorableMethodId :: Id -> Bool
isGStorableMethodId id = any ($ id) [isSizeOfId, isAlignmentId
                                   , isPeekId, isPokeId
                                   , isSpecSizeOfId, isSpecAlignmentId
                                   , isSpecPeekId, isSpecPokeId
#if MIN_VERSION_GLASGOW_HASKELL(8,8,1,0)
                                   , isChoiceSizeOfId, isChoiceAlignmentId
                                   , isChoicePeekId, isChoicePokeId
#endif
                                   ]
------------------
-- Miscellanous --
------------------

-- | Check if binding is non-recursive.
isNonRecBind :: CoreBind -> Bool
isNonRecBind (NonRec _ _) = True
isNonRecBind _            = False

-- | Lift the identifier predicate to work on a core binding.
toIsBind :: (Id -> Bool) -> CoreBind -> Bool
toIsBind pred (NonRec id rhs) = pred id
toIsBind pred (Rec bs)        = any pred $ map fst bs

-- | Use both type getters and identifier predicate to create a predicate.
withTypeCheck :: (Type -> Maybe Type) -> (Id -> Bool) -> Id -> Bool
withTypeCheck ty_f id_f id = do
    let ty_checked = ty_f $ varType id
        id_checked = id_f id
    and [isJust ty_checked, id_checked]

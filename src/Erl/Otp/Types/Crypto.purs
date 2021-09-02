module Erl.Otp.Types.Crypto 
  ( EngineRef
  , KeyId
  , Password
  ) where

import Prelude
import Erl.Types (class ToErl)
import Foreign (unsafeToForeign)
import Unsafe.Reference (unsafeRefEq)

foreign import data EngineRef :: Type

instance eqEngineRef :: Eq EngineRef where
  eq = unsafeRefEq

type KeyId
  = String

type Password
  = String

instance toErl_EngineRef :: ToErl EngineRef where
  toErl = unsafeToForeign

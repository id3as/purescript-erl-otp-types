module Erl.Otp.Types.Stdlib
  ( ChildType(..)
  ) where

import Prelude
import Erl.Atom (atom)
import Erl.Types (class ToErl)
import Foreign (unsafeToForeign)

data ChildType
  = Supervisor
  | Worker

instance toErl_ChildType :: ToErl ChildType where
  toErl Supervisor = unsafeToForeign $ atom "supervisor"
  toErl Worker = unsafeToForeign $ atom "worker"

{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "erl-ssl"
, dependencies =
  [
  , "erl-atom"
  , "erl-binary"
  , "erl-kernel"
  , "foreign"
  , "prelude"
  , "unsafe-reference"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, backend = "purerl"
}

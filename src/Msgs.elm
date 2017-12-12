module Msgs exposing (..)

import Navigation exposing (Location)

type Msg
  = UrlChange Navigation.Location
  | NoOp
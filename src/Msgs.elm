module Msgs exposing (..)

import Navigation exposing (Location)

type Msg
  = RouteChange String
  | UrlChange Navigation.Location
  | NoOp
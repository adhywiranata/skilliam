module Molecules.Card exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)

view : Html msg -> Html msg
view children =
  div
    [ class "card" ][ children ]
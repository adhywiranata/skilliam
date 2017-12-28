module Molecules.Card exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)

-- render list of childrens inside card view
view : List (Html msg) -> Html msg
view childrens =
  div
    [ class "card" ] childrens
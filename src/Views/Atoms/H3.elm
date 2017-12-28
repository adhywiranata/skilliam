module Atoms.H3 exposing (view)

import Html exposing (Html, span, h3)

view : String -> Html msg
view text =
  h3 [] [ Html.text text ]
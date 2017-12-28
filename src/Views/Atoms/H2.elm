module Atoms.H2 exposing (view)

import Html exposing (Html, span, h2)

view : String -> Html msg
view text =
  h2 [] [ Html.text text ]
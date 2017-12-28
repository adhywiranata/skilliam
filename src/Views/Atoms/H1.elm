module Atoms.H1 exposing (view)

import Html exposing (Html, span, h1)

view : String -> Html msg
view text =
  h1 [] [ Html.text text ]
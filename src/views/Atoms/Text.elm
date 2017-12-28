module Atoms.Text exposing (view)

import Html exposing (Html, p, text)

view : String -> Html msg
view text =
  p [] [ Html.text text ]
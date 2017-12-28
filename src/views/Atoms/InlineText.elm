module Atoms.InlineText exposing (view)

import Html exposing (Html, span, text)

view : String -> Html msg
view text =
  span [] [ Html.text text ]
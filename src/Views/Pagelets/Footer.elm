module Pagelets.Footer exposing (view)

import Html exposing (..)

view : Html msg
view =
  footer
        []
        [ span [] [ text "copyright 2017 by skilliam" ] ]
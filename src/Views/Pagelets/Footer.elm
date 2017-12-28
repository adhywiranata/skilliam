module Pagelets.Footer exposing (view)

import Html exposing (..)
import Atoms.InlineText exposing (..)

view : Html msg
view =
  footer
        []
        [ Atoms.InlineText.view "copyright 217 by Skilliam" ]
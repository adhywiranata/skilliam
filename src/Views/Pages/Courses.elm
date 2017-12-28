module Pages.Courses exposing (..)

import Html exposing (Html, div, h1, span, text)
import Models exposing (Model)
import Navigation exposing (Location)

import Msgs exposing (Msg)

view : Model -> Html Msg
view model =
    div
        []
        [ h1 [] [ text "Courses Page" ]
        ]
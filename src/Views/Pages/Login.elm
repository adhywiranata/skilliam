module Pages.Login exposing (..)

import Html exposing (Html, div, h1, span, text)
import Models exposing (Model)

import Msgs exposing (Msg)

import Atoms.H1 as H1

view : Model -> Html Msg
view model =
    div
        []
        [ H1.view "Login to Skilliam"
        ]
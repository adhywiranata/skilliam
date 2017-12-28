module Pages.Home exposing (..)

import Html exposing (Html, div, h1, span, text)
import Models exposing (Model)

import Msgs exposing (Msg)

import Molecules.Card as Card
import Atoms.H1 as H1
import Atoms.H2 as H2
import Atoms.Text as Text

view : Model -> Html Msg
view model =
    div
        []
        [ H1.view "Home Page"
        , Card.view ([ H2.view "hello", Text.view "lorem ipsum"])
        , Card.view ([ H2.view "hola", Text.view "hoi"])
        , Card.view ([ H2.view "yeah", Text.view "awesome"])
        ]
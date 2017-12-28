module Pages.Landing exposing (..)

import Html exposing (Html, div, h1, span, text)
import Models exposing (Model)
import Navigation exposing (Location)

import Msgs exposing (Msg)

viewLocation : Navigation.Location -> Html Msg
viewLocation location =
    div [] [ text (location.pathname ++ location.hash) ]

view : Model -> Html Msg
view model =
    div
        []
        [ h1 [] [ text "Landing Page" ]
        , span [] [ text "welcome to landing page" ]
        , span [] [ text "HISTORY" ]
        , div [] (List.map viewLocation model.history)
        ]
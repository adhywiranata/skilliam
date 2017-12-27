module View exposing (..)
import Html exposing (Html, header, footer, text, div, h1, img, span, nav, ul, li, a, br)
import Html.Attributes exposing (src, class, href)

import Navigation exposing (Location)

import Models exposing (Model)
import Msgs exposing (Msg)

import Core.Header
import Core.Footer

-- HELPER

viewLocation : Navigation.Location -> Html Msg
viewLocation location =
    div [] [ text (location.pathname ++ location.hash) ]

viewContent : Html Msg -> Html Msg
viewContent innerView =
    div [ class "container" ]
        [ innerView ]

viewLandingPage : Model -> Html Msg
viewLandingPage model =
    div
        []
        [ h1 [] [ text "Landing Page" ]
        , span [] [ text "welcome to landing page" ]
        , br [] []
        , br [] []
        , br [] []
        , span [] [ text "HISTORY" ]
        , div [] (List.map viewLocation model.history)
        ]

view : Model -> Html Msg
view model =
    div []
        [ Core.Header.view
        , viewContent (viewLandingPage model)
        , Core.Footer.view
        ]
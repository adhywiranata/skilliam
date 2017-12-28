module View exposing (..)
import Html exposing (Html, header, footer, text, div, h1, img, span, nav, ul, li, a, br)
import Html.Attributes exposing (src, class, href)

import Navigation exposing (Location)

import Models exposing (Model)
import Msgs exposing (Msg)
-- import Routing exposing (parseLocation)

import Core.Header
import Core.Footer

-- HELPER

viewLocation : Navigation.Location -> Html Msg
viewLocation location =
    div [] [ text (location.pathname ++ location.hash) ]

-- viewContent : Html Msg -> Html Msg
-- viewContent innerView =
--     div [ class "container" ]
--         [ innerView ]

viewPage : Model -> Html Msg
viewPage model =
    case ( model.route) of
        Models.HomeRoute ->
            viewHomePage model
        Models.LoginRoute ->
            viewHomePage model
        Models.CoursesRoute ->
            viewHomePage model
        Models.LandingRoute ->
            viewLandingPage model
        Models.NotFoundRoute ->
            viewNotFoundPage model

viewNotFoundPage : Model -> Html Msg
viewNotFoundPage model =
    div
        []
        [ h1 [] [ text "404!" ]
        ]

viewLandingPage : Model -> Html Msg
viewLandingPage model =
    div
        []
        [ h1 [] [ text "Landing Page" ]
        , span [] [ text "welcome to landing page" ]
        , span [] [ text "HISTORY" ]
        , div [] (List.map viewLocation model.history)
        ]

viewHomePage : Model -> Html Msg
viewHomePage model =
    div
        []
        [ h1 [] [ text "Home Page" ]
        , span [] [ text "welcome to home page" ]
        , br [] []
        , br [] []
        , br [] []
        , span [] [ text "HISTORY" ]
        , div [] (List.map viewLocation model.history)
        ]

view : Model -> Html Msg
view model =
    div []
        [ Core.Header.view model
        , div [ class "container" ] [viewPage model]
        , Core.Footer.view
        ]
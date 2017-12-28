module Views.Root exposing (..)

import Html exposing (Html, header, footer, text, div, h1, img, span, nav, ul, li, a, br)
import Html.Attributes exposing (src, class, href)

import Models exposing (Model)
import Msgs exposing (Msg)

import Core.Header
import Core.Footer

import Pages.Landing
import Pages.Home
import Pages.Courses
import Pages.NotFound
    
viewPage : Model -> Html Msg
viewPage model =
    case ( model.route) of
        Models.HomeRoute ->
            Pages.Home.view model
        Models.LoginRoute ->
            Pages.Home.view model
        Models.CoursesRoute ->
            Pages.Courses.view model
        Models.LandingRoute ->
            Pages.Landing.view model
        Models.NotFoundRoute ->
            Pages.NotFound.view model


view : Model -> Html Msg
view model =
    div []
        [ Core.Header.view model
        , div [ class "container" ] [viewPage model]
        , Core.Footer.view
        ]
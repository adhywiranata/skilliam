module Pages.Courses exposing (..)

import Html exposing (Html, div, h1, span, text)
import Models exposing (Model)
import RemoteData exposing (WebData)
import Data.Course

import Msgs exposing (Msg)

import Molecules.Card as Card
import Atoms.H1 as H1
import Atoms.H2 as H2
import Atoms.Text as Text

viewCourseCard : Data.Course.Course -> Html Msg
viewCourseCard course =
    Card.view
        ([ H2.view course.title
        , Text.view course.description
        ])

viewCourseList : List Data.Course.Course -> Html Msg
viewCourseList courses =
    let
        viewCourses =
            List.map viewCourseCard courses
    in
        div [] viewCourses

viewError : String -> Html Msg
viewError err =
    div [][ text err ]

viewLoading : Html msg
viewLoading =
    div [][ text "loading.." ]

viewRemoteCourseList : RemoteData.WebData (List Data.Course.Course) -> Html Msg
viewRemoteCourseList remoteCourseList =
    case remoteCourseList of
        RemoteData.Success courses ->
            viewCourseList courses
        RemoteData.Failure err ->
            viewError (toString err)
        RemoteData.Loading ->
            viewLoading
        RemoteData.NotAsked ->
            viewLoading

view : Model -> Html Msg
view model =
    div
        []
        [ H1.view "COURSES"
        , viewRemoteCourseList model.courses
        ]
module Pages.Login exposing (..)

import Html exposing (Html, div, h1, span, text, form, input, label)
import Html.Attributes exposing (id, class, type_, placeholder, for, value)
import Html.Events exposing (onInput)
import Models exposing (Model)

import Msgs exposing (Msg)

import Atoms.H1 as H1

view : Model -> Html Msg
view model =
    div
        []
        [ H1.view "Login to Skilliam"
        , form
            [ class "form" ]
            [ div
                [ class "input-group" ]
                [ label [ for "f-email" ][ text "Email" ]
                , input
                    [ id "f-email"
                    , type_ "text"
                    , placeholder "Enter your email"
                    ]
                    []
                ]
            ,  div
                [ class "input-group" ]
                [ label [ for "f-password" ][ text "Password" ]
                , input
                    [ id "f-password"
                    , type_ "password"
                    , placeholder "Enter your password"
                    ]
                    []
                ]
            , div
                [ class "input-group" ]
                [ input
                    [ type_ "submit"
                    , class "btn"
                    , value "Log In"
                    ]
                    []
                ]
            ]
        ]
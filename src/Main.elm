module Main exposing (..)

import Html exposing (Html, header, footer, text, div, h1, img, span, nav, ul, li)
import Html.Attributes exposing (src, class)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----

viewHeader : Html Msg
viewHeader =
    header 
        []
        [ div [ class "logo" ] [ text "SKILLIAM" ]
        , nav
            [ class "nav" ]
            [ ul
                []
                [ li [] [ text "Home" ]
                , li [] [ text "Courses" ]
                , li [] [ text "Learnings" ]
                , li [] [ text "Profile" ]
                , li [] [ text "Logout" ]
                ]
            ]
        ]

viewContent : Html Msg -> Html Msg
viewContent innerView =
    div [ class "container" ]
        [ innerView ]

viewFooter : Html Msg
viewFooter =
    footer
        []
        [ span [] [ text "copyright 2017 by skilliam" ] ]

view : Model -> Html Msg
view model =
    div []
        [ viewHeader
        , viewContent (div [] [ text "wowow" ])
        , viewFooter
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }

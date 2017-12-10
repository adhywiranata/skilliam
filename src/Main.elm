module Main exposing (..)

import Html exposing (Html, header, footer, text, div, h1, img, span, nav, ul, li, a, br)
import Html.Attributes exposing (src, class, href)
import Navigation
-- import Html.Events exposing (onWithOptions)
-- import Json.Decode

---- HELPERS ----

-- onClickPreventDefault : msg -> Html.Attribute msg
-- onClickPreventDefault msg =
--   onWithOptions
--     "click"
--     { preventDefault = True
--     , stopPropagation = False
--     }
--     (Json.Decode.succeed msg)

---- MODEL ----


type alias Model =
  { history : List Navigation.Location -- history is a "stack" of routes
  }


init : Navigation.Location -> ( Model, Cmd Msg )
init location =
  ( Model [ location ]
  , Cmd.none
  )



---- UPDATE ----


type Msg
  = UrlChange Navigation.Location
  | NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlChange location ->
            ({ model | history = location :: model.history }, Cmd.none)
        NoOp ->
            (model, Cmd.none)



---- VIEW ----

viewLink : String -> Html Msg
viewLink name =
    a
        [ href name ]
        [ text name ]

viewLocation : Navigation.Location -> Html Msg
viewLocation location =
    div [] [ text (location.pathname ++ location.hash) ]

viewHeader : Html Msg
viewHeader =
    header 
        []
        [ div [ class "logo" ] [ text "SKILLIAM" ]
        , nav
            [ class "nav" ]
            [ ul
                []
                [ li [] [ viewLink "home" ]
                , li [] [ viewLink "courses" ]
                , li [] [ viewLink "learnings" ]
                , li [] [ viewLink "profile" ]
                , li [] [ viewLink "logout" ]
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
        [ viewHeader
        , viewContent (viewLandingPage model)
        , viewFooter
        ]



---- PROGRAM ----


-- main : Program Never Model Msg
-- main =
--     Html.program
--         { view = view
--         , init = init
--         , update = update
--         , subscriptions = always Sub.none
--         }

main : Program Never Model Msg
main =
  Navigation.program UrlChange
    { init = init
    , view = view
    , update = update
    , subscriptions = (\_ -> Sub.none)
    }
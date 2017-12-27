module Core.Header exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Msgs exposing (Msg)
import Html.Events exposing (onWithOptions)
import Json.Decode

onClickPreventDefault : msg -> Html.Attribute msg
onClickPreventDefault msg =
  onWithOptions
    "click"
    { preventDefault = True
    , stopPropagation = True
    }
    (Json.Decode.succeed msg)

viewLink : String -> Html Msg
viewLink name =
    a
        [ href name
        , onClickPreventDefault (Msgs.RouteChange name)
        ]
        [ text name ]

view : Html Msg
view =
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
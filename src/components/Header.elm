module Header exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

viewLink : String -> Html msg
viewLink name =
    a
        [ href name ]
        [ text name ]

view : Html msg
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
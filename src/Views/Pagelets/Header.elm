module Pagelets.Header exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Models exposing (Model)
import Msgs exposing (Msg)

import Atoms.Link exposing (view)

view : Model -> Html Msg
view model =
  header 
      []
      [ div [ class "logo" ] [ text "SKILLIAM" ]
      , div [] [ text (toString model.route) ]
      , nav
          [ class "nav" ]
          [ ul
              []
              [ li [] [ Atoms.Link.view "home" ]
              , li [] [ Atoms.Link.view "courses" ]
              , li [] [ Atoms.Link.view "learnings" ]
              , li [] [ Atoms.Link.view "profile" ]
              , li [] [ Atoms.Link.view "login" ]
              , li [] [ Atoms.Link.view "logout" ]
              ]
          ]
      ]
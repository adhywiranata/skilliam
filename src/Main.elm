module Main exposing (..)

import Navigation

import Models exposing (Model)
import Data.Course exposing (initialModel)
import Views.Root exposing (view)
import Msgs exposing (Msg)
import Update exposing (update)
import Routing exposing (parseLocation)
import Commands exposing (fetchCourses)


init : Navigation.Location -> ( Model, Cmd Msg )
init location =
  (
    { route = parseLocation location
    , history = [ location ]
    , courses = Data.Course.initialModel
    }
    , fetchCourses
  )

---- PROGRAM ----

main : Program Never Model Msg
main =
  Navigation.program Msgs.UrlChange
    { init = init
    , view = view
    , update = update
    , subscriptions = (\_ -> Sub.none)
    }
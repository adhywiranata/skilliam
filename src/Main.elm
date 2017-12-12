module Main exposing (..)

import Navigation
-- import UrlParser exposing (..)

import Models exposing (Model)
import View exposing (view)
import Msgs exposing (Msg)
import Update exposing (update)

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

-- matchers : Parser (Route -> a) a
-- matchers =
--     oneOf
--         [ map LandingRoute top
--         ]

-- parseLocation : Navigation.Location -> Route
-- parseLocation location =
--     case (parseHash matchers location) of
--         Just route ->
--             route

--         Nothing ->
--             NotFoundRoute



---- MODEL ----

-- type Route
--     = LandingRoute
--     | LoginRoute
--     | HomeRoute
--     | CoursesRoute
--     -- | CourseRoute courseId
--     | NotFoundRoute

-- type alias Model =
--   { history : List Navigation.Location -- history is a "stack" of routes
--   }


init : Navigation.Location -> ( Model, Cmd Msg )
init location =
  ( Model [ location ]
  , Cmd.none
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
module Models exposing (..)

import Navigation exposing (Location)
import RemoteData exposing (WebData)

import Data.Course

type Route
    = LoginRoute
    | LandingRoute
    | HomeRoute
    | CoursesRoute
    -- | CourseRoute courseId
    | NotFoundRoute

type alias Model =
  { route : Route
  , history : List Navigation.Location -- history is a "stack" of routes
  , courses : WebData(List Data.Course.Course)
  }
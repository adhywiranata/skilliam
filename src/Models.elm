module Models exposing (..)

import Navigation exposing (Location)

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
  }
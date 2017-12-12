module Models exposing (..)

import Navigation exposing (Location)

type Route
    = LandingRoute
    | LoginRoute
    | HomeRoute
    | CoursesRoute
    -- | CourseRoute courseId
    | NotFoundRoute

type alias Model =
  { history : List Navigation.Location -- history is a "stack" of routes
  }
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
  { route : Route
  , history : List Navigation.Location -- history is a "stack" of routes
  }

-- initialModel : Route -> Model
-- initialModel route =
--   { history = route
--   }
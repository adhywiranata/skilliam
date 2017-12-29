module Msgs exposing (..)

import Navigation exposing (Location)
import Data.Course
import RemoteData exposing (WebData)

type Msg
  = RouteChange String
  | UrlChange Navigation.Location
  | OnFetchCourses (WebData (List Data.Course.Course))
  | NoOp
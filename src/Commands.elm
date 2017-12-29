module Commands exposing (..)

import Http
import Json.Decode as Decode
-- import Json.Decode.Pipeline exposing (decode, required)
import Msgs exposing (Msg)
import Data.Course exposing (Course)
import RemoteData

fetchCourses : Cmd Msg
fetchCourses =
  Http.get fetchCoursesUrl coursesDecoder
    |> RemoteData.sendRequest
    |> Cmd.map Msgs.OnFetchCourses

fetchCoursesUrl : String
fetchCoursesUrl =
  "http://localhost:1234/courses"

coursesDecoder : Decode.Decoder (List Course)
coursesDecoder =
  Decode.list Data.Course.decoder
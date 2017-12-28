module Data.Course exposing (..)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline as Pipeline exposing (decode, required)

type alias Course =
  { id : Int
  , userId : Int
  , title : String
  , description : Maybe String
  , competencies : List String
  }

decoder : Decoder Course
decoder =
  decode Course
    |> required "id" Decode.int
    |> required "userId" Decode.int
    |> required "title" Decode.string
    |> required "description" (Decode.nullable Decode.string)
    |> required "competencies" (Decode.list Decode.string)
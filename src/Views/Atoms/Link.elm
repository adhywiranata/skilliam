module Atoms.Link exposing (view)

import Html exposing (..)
import Html.Attributes exposing (href)
import Html.Events exposing (onWithOptions)
import Msgs exposing (Msg)
import Json.Decode

-- add click default prevention to anchor
onClickPreventDefault : msg -> Html.Attribute msg
onClickPreventDefault msg =
  onWithOptions
    "click"
    { preventDefault = True
    , stopPropagation = True
    }
    (Json.Decode.succeed msg)

view : String -> Html Msg
view link =
  a
    [ href link
    , onClickPreventDefault (Msgs.RouteChange link)
    ]
    [ text link ]
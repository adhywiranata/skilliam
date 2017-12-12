module Update exposing (..)

import Msgs exposing (Msg)
import Models exposing (Model)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msgs.UrlChange location ->
            ({ model | history = location :: model.history }, Cmd.none)
        Msgs.NoOp ->
            (model, Cmd.none)


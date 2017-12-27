module Update exposing (..)

import Msgs exposing (Msg)
import Models exposing (Model)
import Navigation exposing (..)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msgs.RouteChange newUrl ->
            (model, Navigation.newUrl newUrl)
        Msgs.UrlChange location ->
            ({ model | history = location :: model.history }, Cmd.none)
        Msgs.NoOp ->
            (model, Cmd.none)


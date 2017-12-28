module Update exposing (..)

import Msgs exposing (Msg)
import Models exposing (Model)
import Routing exposing (parseLocation)
import Navigation exposing (..)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        -- routeChange is a message to call a command, the Navigation.newUrl
        Msgs.RouteChange url ->
            (model, Navigation.newUrl url)
        -- urlChange will add a new route to history stack
        Msgs.UrlChange location ->
            ({ model | route = parseLocation location, history = location :: model.history }, Cmd.none)
        Msgs.NoOp ->
            (model, Cmd.none)


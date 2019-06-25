-- Extracted from: https://guide.elm-lang.org
-- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/buttons.html

module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
  Browser.sandbox { init = 0, update = update, view = view }

-- MODEL

type alias Model = Int

init : Model
init =
  0

-- UPDATE

type Msg = Increment | Decrement

update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

-- VIEW

view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]

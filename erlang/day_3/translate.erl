-module(translate).
-export([loop/0]).

loop() ->
  receive
    "casa" ->
      io:format("house~n"),
      loop();
    "blanca" ->
      io:format("white~n"),
      loop();
    "bonjour" ->
      exit({no,french});
    _ ->
      io:format("I dont' understand.~n"),
      loop()
  end.

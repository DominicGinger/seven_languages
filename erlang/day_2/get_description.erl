-module(get_description).
-export([get/1]).


get(N) ->
  Langs = [{erlang, "Functional programming"}, {ruby, "OOP"}],
  L = lists:filter(fun({K,_}) ->
                       K == N
                   end,
                   Langs),
  [{_,D}] = L,
  D.

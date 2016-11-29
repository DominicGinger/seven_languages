-module(count_10).
-export([count/0]).

count(10) -> 10;
count(N) -> 
  io:format("~p\n", [N]),
  count(N+1).
count() -> count(1).

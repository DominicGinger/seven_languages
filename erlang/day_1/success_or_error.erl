-module(success_or_error).
-export([print/1]).

print(success) -> io:format("~p\n", [success]);
print({error, Message}) ->
  io:format("error: ~p\n", [Message]).


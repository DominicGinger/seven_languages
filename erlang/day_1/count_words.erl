-module(count_words).
-export([count_words/1]).

count_words([]) -> 0;
count_words(S) -> count_words(S, 0).

count_words([], Count) -> Count;
count_words([_|T], Count) -> 
  count_words(T, Count+1).



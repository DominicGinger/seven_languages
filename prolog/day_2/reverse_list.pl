reverse([],[]).
reverse([Head|Tail1], R) :-
  reverse(Tail1, Tail2),
  append(Tail2,[Head],R).


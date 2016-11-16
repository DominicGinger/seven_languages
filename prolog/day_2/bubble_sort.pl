check([]).
check([_]).

check([A,B|List]) :-
  A =< B,
  check([B|List]).

bubble_sort([], []).
%bubble_sort([_], []).
%bubble_sort(List, _) :-
%  check(List).

bubble_sort([_,_], _).

bubble_sort([A,B|List], R) :-
  A =< B,
  append(A,[List],R),
  bubble_sort([B|List], R).

bubble_sort([A,B|List], R) :-
  A > B,
  append(B,[List],R),
  bubble_sort([A|List], R).
  

check([]).
check([_]).
check([A,B|List]) :-
  A =< B,
  check([B|List]).

bubble_sort(R,R) :-
  check(R).
bubble_sort(List,R) :-
  swap(List,Swapped),
  bubble_sort(Swapped,R).

swap([A,B|List],[B,A|List]) :- 
  A > B.
swap([A|List],[A|List2]) :- 
  swap(List,List2).


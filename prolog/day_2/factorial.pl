factorial(0, R) :- R is 1.
factorial(N, R) :- 
  Next is N - 1,
  factorial(Next, R2),
  R is R2*N.

fact(N, R) :- fact(N, 1, R).
fact(0, R, R).
fact(N, Acc, R) :-
  NewN is N - 1,
  NewAcc is Acc * N,
  fact(NewN, NewAcc, R).


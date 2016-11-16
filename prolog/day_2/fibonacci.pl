fibonacci(0, R) :- R is 0.
fibonacci(1, R) :- R is 1.
fibonacci(N, R) :- 
  N1 is N - 1,
  N2 is N - 2,
  fibonacci(N1, F1),
  fibonacci(N2, F2),
  R is F1+F2.




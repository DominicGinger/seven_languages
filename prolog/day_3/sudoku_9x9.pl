% 9x9 sudoku solver
% sample input: 'sudoku([[_,1,_,8,6,5,_,3,_],[3,_,6,2,_,_,_,_,4],[_,7,5,_,_,_,6,_,_],[_,_,9,1,_,_,_,4,2],[5,6,_,_,_,_,_,9,3],[4,2,_,_,_,3,1,_,_],[_,_,7,_,_,_,4,1,_],[8,_,_,_,_,7,5,_,9],[_,5,_,9,8,4,_,7,_]],S).'

:- use_module(library(clpfd)).

valid([]).
valid([H|T]) :-
  all_distinct(H),
  valid(T).

pretty_print([]).
pretty_print([H|T]) :-
  writeln(H),
  pretty_print(T).

rows(Puzzle) :-
  valid(Puzzle).

cols(Puzzle) :-
  transpose(Puzzle, Cols),
  valid(Cols).
  
squares([]).
squares([[A,B,C|_], [D,E,F|_], [G,H,I|_]|Puzzle]) :-
  all_distinct([A,B,C,D,E,F,G,H,I]),
  squares(Puzzle).

sudoku(Puzzle, Solution) :-
  Solution = Puzzle,
  length(Puzzle, Length),
  append(Puzzle, BigList), 
  BigList ins 1..Length,

  rows(Puzzle),
  cols(Puzzle),
  squares(Puzzle),

  pretty_print(Solution).


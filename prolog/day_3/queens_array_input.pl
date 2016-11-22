:- use_module(library(clpfd)).

valid_queen((Row, Col)) :- 
  member(Col, [1,2,3,4,5,6,7,8]).
valid_board([]).
valid_board([Head|Tail]) :- 
  valid_queen(Head), valid_board(Tail). 
    
cols([], []).
cols([(_, Col)|QueensTail], [Col|ColsTail]) :- 
  cols(QueensTail, ColsTail).
  
diags1([], []).
diags1([(Row, Col)|QueensTail], [Diagonal|DiagonalsTail]) :- 
  Diagonal is Col - Row, 
  diags1(QueensTail, DiagonalsTail).
  
diags2([], []).
diags2([(Row, Col)|QueensTail], [Diagonal|DiagonalsTail]) :- 
  Diagonal is Col + Row, 
  diags2(QueensTail, DiagonalsTail).

eight_queens(Input) :- 
  Input = [A,B,C,D,E,F,G,H],
  Board = [(1, A), (2, B), (3, C), (4, D), (5, E), (6, F), (7, G), (8, H)], 
  valid_board(Board), 
  cols(Board, Cols), 
  diags1(Board, Diags1), 
  diags2(Board, Diags2), 
  all_distinct(Cols), 
  all_distinct(Diags1),   
  all_distinct(Diags2).

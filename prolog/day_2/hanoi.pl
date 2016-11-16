move([Disk],X,Y,_) :-
  write('Move disk '),
  write(Disk),
  write(' from '),
  write(X),
  write(' to '),
  write(Y),
  nl.

move([Bottom|Rest],Start,Swap,Goal) :-
  move(Rest,Start,Goal,Swap),
  move([Bottom],Start,_,Goal),
  move(Rest,Swap,Start,Goal).

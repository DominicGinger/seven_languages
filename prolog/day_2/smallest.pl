search([R],R).

search([A,B|List], R) :-
  A =< B,
  search([A|List], R).

search([A,B|List], R) :-
  A > B,
  search([B|List], R).

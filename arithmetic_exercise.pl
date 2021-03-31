increment(X,Y) :- Y is X + 1.

isSum(X,Y,Z) :- Z is X+Y.

addOne(IN, OUT) :-
  IN = [H1|T1],
  OUT = [_|T2],
  addOne(T1, T2).

same(B, W) :- B = W.
shareDiagonal(BX, BY, WX, WY) :- 
  X is abs(BX - WX),
  Y is abs(BY - WY),
  same(X,Y).

attacks(BX, BY, WX, WY) :- same(BX, WX).
attacks(BX, BY, WX, WY) :- same(BY, WY).
attacks(BX, BY, WX, WY) :- shareDiagonal(BX, BY, WX, WY).

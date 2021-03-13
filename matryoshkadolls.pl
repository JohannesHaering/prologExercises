directlyIn(katarina, olga).
directlyIn(olga, natasha).
directlyIn(natasha, irina).

isIn(X, Y) :- directlyIn(X, Y).
isIn(X, Y) :- directlyIn(X, Z),
    isIn(Z, Y).

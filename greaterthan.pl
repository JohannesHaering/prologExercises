greaterThan(X, 0) :- X \= 0.
greaterThan(suc(X), suc(Y)) :- greaterThan(X, Y).

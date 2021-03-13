mirror(leaf(X), T) :- T = leaf(X).
mirror(tree(leaf(X), leaf(Y)), T) :- T = tree(leaf(Y), leaf(X)).
mirror(tree(X, Y), tree(T1, T2)) :- mirror(Y, T1), mirror(X, T2).

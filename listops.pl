member(X, [X|_]).
member(X, [_|Y]) :- member(X, Y).

a2b([], []).
a2b([A|X],[B|Y]) :- A = a, B = b, a2b(X,Y).

len([], L) :- L = 0.
len([_|Y], suc(L)) :- len(Y, L).

zip([], [], []).
zip([X1|X2],[Y1|Y2], [[X1,Y1]|Z]) :- zip(X2, Y2, Z).

merge([], [], []).
merge([], X, X).
merge(X, [], X).
merge([X1|X2], [Y1|Y2], [X1, Y1 | M]) :- merge(X2, Y2, M).

trans('null', 'Null').
trans('one', 'eins').
trans('two', 'zwei').
trans('three', 'drei').
trans('four', 'vier').
trans('five', 'fünf').
trans('six', 'sechs').
trans('seven', 'sieben').
trans('eigth', 'acht').
trans('nine', 'neun').

transList([], []).
transList([X|Y], [Z|W]) :- trans(X, Z), transList(Y, W).

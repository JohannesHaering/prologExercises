equilateral(L1, L2, L3) :- 
  (L1 = L2),
  (L2 = L3).

isosceles(L1, L2, L3) :- (L1=L2) ; (L1=L3) ; (L2=L3).

scalene(L1, L2, L3) :- (L1 \= L2) , (L1 \= L3) , (L2 \= L3).

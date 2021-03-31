decimalToBinary(D, O) :- decimalToBinaryHelper(D, [], O).
combineToOneNumber(Bs, O) :- combineToOneNumberHelper(Bs, 0, O).

decimalToBinaryHelper(D, B, O) :- D == 0, combineToOneNumber([0|B],O).
decimalToBinaryHelper(D, B, O) :- D == 1, combineToOneNumber([1|B],O).
decimalToBinaryHelper(D, B, O) :- Q is div(D,2 ), R is mod(D, 2), N = [R|B], decimalToBinaryHelper(Q, N, O).

combineToOneNumberHelper([],T, O) :- O = T.
combineToOneNumberHelper([B|Bs],T, O) :- N is 10*T + B, combineToOneNumberHelper(Bs, N, O).

fab(1, 1).
fab(2, 1).
fab(N, Sum) :- N > 2, N1 is N - 1, N2 is N - 2, fab(N1, Sum1), fab(N2, Sum2), Sum is Sum1 + Sum2.
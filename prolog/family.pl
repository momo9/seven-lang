father(liu_bang, liu_heng).
father(liu_heng, liu_che).

ancestor(X, Y) :- father(X, Y).
ancestor(X, Y) :- father(X, Z), ancestor(Z, Y).

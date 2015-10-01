min([I], I).
min([Head|Tail], Min) :- min(Tail, Tailmin), Head < Tailmin, Min is Head.
min([Head|Tail], Min) :- min(Tail, Tailmin), Head >= Tailmin, Min is Tailmin.

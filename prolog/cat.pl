cat([], List, List).
cat([Head|Tail1], List, [Head|Tail2]) :- cat(Tail1, List, Tail2).
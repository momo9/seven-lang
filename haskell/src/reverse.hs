module Main where
reverse_tuple (a, h:t) = reverse_tuple ([h] ++ a, t)
reverse_tuple (a, []) = (a, [])
reverse_result (x, y) = x
my_reverse list = reverse_result (reverse_tuple([], list))
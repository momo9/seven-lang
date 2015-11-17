module Main where
all_even [] = []
all_even (h:t) = if (even h) then h:(all_even t) else all_even t
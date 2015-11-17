module Main where
put_into num before (h:t) compare =
    if (compare num h)
    then (before ++ [num] ++ h:t)
    else (put_into num (before ++ [h]) t compare)
put_into num before [] compare = before ++ [num]

put_in_order num list compare = put_into num [] list compare

order_tuple (ordered, h:t) compare = order_tuple((put_in_order h ordered compare), t) compare
order_tuple (ordered, []) compare = (ordered, [])

order list compare = (\(x, y) -> x) (order_tuple ([], list) compare)

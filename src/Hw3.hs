cipher2  [] _ = []                 -- An empty list with any number returns an empty list
cipher2 (s:ss) n = (rotate s n) : (cipher2 ss n)  -- This is the same pattern as seen on line 5.
-- If you have  a list of at least chars, rotate the head and cipher the tail.

rotate2 :: Char -> Int -> Char
rotate2 c 0 = c
rotate2 c n = int2letter ( mod ((letter2int c) + n) 26 )

letter2int c = ord c - 97
int2letter n = chr (n + 97)


-- 














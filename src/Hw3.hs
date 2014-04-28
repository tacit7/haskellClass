module Hw3 where

cipher1 :: String -> Int -> String -- This type taks a string and an int and returns a String
cipher1 "" n = ""                  -- An empty string will return an empty string
cipher1 str n = rotate (head str) n : cipher1 (tail str) n -- The ':' operator is the cons operator and it appends a head to a tail

-- About line 5
-- The left side of the cons operator rotates the letter. It creates a head with the transposed letter.
-- The right side of the cons operator makes a tail call.


rotate1 :: Char -> Int -> Char     -- Takes a char and an int. It returns a char.
rotate1 c 0 = c                    -- If you want to rotate 0 times, you get the same char
rotate1 c n = rotate (next c) (n-1) -- Another recursive call.
-- Basically, keep incrementing the char untill you have exausted n

next :: Char -> Char              -- Takes a char and returns a char
next c = if c == 'z' then 'a' else succ c  -- This actually they do the rotation
                                           -- When you have char z, next 'z' then we you get 'a'


-- cipher2
import Data.Char
cipher2 :: [Char] -> Int -> [Char] -- Takes a list of chars and an int and returns a char
cipher2  [] _ = []                 -- An empty list with any number returns an empty list
cipher2 (s:ss) n = (rotate s n) : (cipher2 ss n)  -- This is the same pattern as seen on line 5.
-- If you have  a list of at least chars, rotate the head and cipher the tail.

rotate2 :: Char -> Int -> Char
rotate2 c 0 = c
rotate2 c n = int2letter ( mod ((letter2int c) + n) 26 )

letter2int c = ord c - 97
int2letter n = chr (n + 97)


-- 














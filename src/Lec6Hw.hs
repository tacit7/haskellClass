module Lec6Hw where
import Data.Char
import Data.List

-- Similar ot the first answer in class
strong1 p = length p >= 15
  && any isLower p
  && any isUpper p
  && any isDigit p

-- This is the last example in the class
-- found it interesting
-- Designed by Jared Candelaria
strong2 :: String -> Bool
strong2 password = all ($ password) requirements
    where
        requirements = [minLength 15,
                        any isUpper,
                        any isLower,
                        any isDigit]
        minLength n str = n <= length str
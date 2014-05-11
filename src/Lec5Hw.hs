module Lec5Hw
(Tree(..), add )
where

data Tree = Tree Int Tree  Tree | NilTree
              deriving (Show)

add :: Tree -> Int
add (NilTree) = 0
add (Tree x lft rgt) = x + (add lft) + (add rgt)
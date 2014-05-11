module Main where
import           Lec5Hw

a = Tree  5 NilTree NilTree
b = Tree 6 a (Tree 9 NilTree NilTree)
main :: IO ()
main = do
    putStrLn $ show( add b )

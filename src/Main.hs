-- | Main entry point to the application.
module Main where
import           Lec4Hw
a  = convert (1, "l")
-- | The main entry point.
main :: IO ()
main = do
    putStrLn $ show a

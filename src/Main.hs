module Main where
import           Lec5Scratch

a = MetricMeasurement 2 Meter
main :: IO ()
main = do
    putStrLn $ show (convert a)

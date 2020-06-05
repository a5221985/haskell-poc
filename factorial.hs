module Main where

factorial 0 = 1
factorial n = n * factorial (n - 1)

factorialSeries x = [factorial a | a <- [0..x]]
main :: IO ()
main = do
    let z = factorial 10
    putStrLn $ "The result is: " ++ show z
    let s = factorialSeries 10
    putStrLn $ "The series is: " ++ show s

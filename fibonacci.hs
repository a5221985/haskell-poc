module Main where

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

fibonacciSeries x = [fibonacci a | a <- [0..x]]

main :: IO ()
main = do
    let z = fibonacci 20
    putStrLn $ "The result is: " ++ show z
    let s = fibonacciSeries 20
    putStrLn $ "The series is: " ++ show s

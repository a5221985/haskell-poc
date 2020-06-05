module Main where

quicksort [] = []
quicksort (x : xs) = quicksort [a | a <- xs, a <= x] ++ [x] ++ quicksort [a | a <- xs, a > x]

main :: IO ()
main = do
     let z = quicksort [10, 3, 2, 5, 6, 8, 4, 1, 7, 9]
     putStrLn $ "The result is: " ++ show z

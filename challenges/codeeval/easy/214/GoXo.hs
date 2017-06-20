module Main where

import System.Environment (getArgs)

main = do
    (file:_) <- getArgs
    contents <- readFile file
    let lista = lines contents
    let ans = map (unwords . (reverse . quicksort) . words) lista
    mapM_ putStrLn ans

quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) = quicksort lesser ++ [p] ++ quicksort greater
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs

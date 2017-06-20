module Main where

import System.Environment (getArgs)

main = do
    (file:_) <- getArgs
    contents <- readFile file
    let split = map words (lines contents)
    mapM_ (putStrLn . eachElem) split

eachElem :: [String] -> String
eachElem lista = unwords (map swapBounds lista)

swapBounds :: [a] -> [a]
swapBounds xs = let len = length xs
                    elemI = head xs
                    elemJ = xs !! (len - 1)
                    middle = take (len - 2) (drop 1 xs)
                in  [elemJ] ++ middle ++ [elemI]

module Main where

import System.Environment (getArgs)

main = do
    (file:_) <- getArgs
    contents <- readFile file
    let lista = listToInt (lines contents)
    let nums = map (sum . digs) lista
    mapM_ print nums

digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

listToInt :: [String] -> [Integer]
listToInt = map read
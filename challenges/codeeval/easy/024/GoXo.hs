module Main where

import System.Environment (getArgs)

main = do
	(file:_) <- getArgs
	contents <- readFile file
	let ans = listToInt (lines contents)
	print (sum ans)
	return ()

listToInt :: [String] -> [Integer]
listToInt = map read
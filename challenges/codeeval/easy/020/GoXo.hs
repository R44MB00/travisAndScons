module Main where

import System.Environment (getArgs)
import Data.Char(toLower)

main = do
	(file:_) <- getArgs
	contents <- readFile file
	mapM_ putStrLn 	$ map (map toLower)
					$ lines contents
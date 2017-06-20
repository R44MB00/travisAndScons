module Main where

import System.Environment (getArgs)

main = do
    (file:_) <- getArgs
    contents <- readFile file
    let lista = listToInt (lines contents)
    mapM_ (putStrLn . ageToText) lista


listToInt :: [String] -> [Int]
listToInt = map read

ageToText :: (Integral a) => a -> String
ageToText age  
    | age >= 0 && age <= 2 = "Still in Mama's arms"
    | age >= 3 && age <= 4 = "Preschool Maniac"
    | age >= 5 && age <= 11 = "Elementary school"
    | age >= 12 && age <= 14 = "Middle school"
    | age >= 15 && age <= 18 = "High school"
    | age >= 19 && age <= 22 = "College"
    | age >= 23 && age <= 65 = "Working for the man"
    | age >= 66 && age <= 100 = "The Golden Years"
    | otherwise  = "This program is for humans"

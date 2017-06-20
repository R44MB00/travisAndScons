module Main where

import System.Environment (getArgs)

main = do
    (file:_) <- getArgs
    contents <- readFile file
    let lista = listToDoub (lines contents)
    let ans = map degToTime lista
    mapM_ putStrLn ans
    return()

listToDoub :: [String] -> [Double]
listToDoub = map read

degToTime :: Double -> String
degToTime num = let d = truncate num
                    temp = num - fromInteger d
                    m = truncate(temp * 60)
                    s = truncate((temp - fromInteger m / 60) * 3600)
                    in show d ++ "." ++ formatGo m ++ "'" ++ formatGo s ++ "\""

formatGo :: Integer -> String
formatGo n = if n < 10
             then '0' : show n
             else show n

import Control.Monad

import Data.List

readInts :: IO [Int]
readInts = fmap (map read.words) getLine

count l =
    let accumulate acc el = el + acc
    in foldl' accumulate 0 l

main = do num <- readLn
          forM_ [1 .. num] $ \i -> do
            compare <- readInts
            let pow x = x * x
            let sumall = sum(map pow compare)
            putStr(show (sumall) ++ " ") 

import Control.Monad

readInts :: IO [Int]
readInts = fmap (map read.words) getLine

main :: IO ()
main = do num <- readLn
          forM_ [1 .. num] $ \i -> do
              compare <- readInts
              if (compare!!0 < compare!!1) then putStr(show (compare!!0) ++ " ") else putStr( show (compare!!1) ++ " ")


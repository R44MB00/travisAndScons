-- Codeabbey 002 Sum in loop
addNumbers2 :: Int -> IO Int
addNumbers2 num = do
    n <- readLn :: IO Int
    if num == 1 then
        return n  -- return result
    else do
        therest <- addNumbers2 (num - 1) -- recursive on therest
        return (n + therest) 
      
main = do
    lim <- readLn :: IO Int
    x <- addNumbers2 lim
    print (x)
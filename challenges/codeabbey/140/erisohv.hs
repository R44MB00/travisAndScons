-- Read a int from input
getInt :: IO Int
getInt = readLn 

-- Calculate the factorial of n
factorial :: Int -> Integer
factorial n
  | n == 0 || n == 1 = 1
  | n > 1 = (fromIntegral n) * factorial (n - 1) 

-- Calculate the Catalan number for n (https://en.wikipedia.org/wiki/Catalan_number)
catalanNumber :: Int -> Integer
catalanNumber n = (factorial (2*n)) `div` ((factorial (n+1)) * factorial n)

main = do num <- getInt   
          print (catalanNumber num)

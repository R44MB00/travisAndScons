import System.IO
import Control.Monad
import Data.List

readInts :: IO [Int]
readInts = fmap (map read.words) getLine

getClosestTo0 tuplaTemp = do
    if (length(fst tuplaTemp) > 0 && length(snd tuplaTemp) == 0) then 
        print (minimum(fst tuplaTemp))
    else do
        if (length(snd tuplaTemp) > 0 && length(fst tuplaTemp) == 0) then
            print(maximum(snd tuplaTemp))
        else do
            if (length(fst tuplaTemp) > 0 && length(snd tuplaTemp) > 0) then do
                 let minPos = minimum(fst tuplaTemp)
                 let minNeg = abs(maximum(snd tuplaTemp))
                 if (minPos == minNeg) then
                     print minPos
                 else do
                     if (minPos > minNeg) then print minNeg else print minPos
            else print 0

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    input_line <- getLine
    let n = read input_line :: Int -- the number of temperatures to analyse
    if (n == 0) then print 0
    else do
        temps <- readInts
        getClosestTo0 (partition (>=0) temps)

import Data.Char
import Data.List
import Data.Maybe
import Control.Monad
import Numeric (showHex, showIntAtBase, readInt)

-- Base32 alphabet
alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

-- Transform to Binary
toBin n = showIntAtBase 2 intToDigit n ""

-- Adds 0 at the begining of a list to complete M bits
completeByte n m
    | (length n) == m = n
    | (length n) < m = (replicate (m - length n) '0') ++ n
    
-- Return an String with the binary represetation of the word, with bits string of m bits, from the represetation given by "function"
concatenateBytes word i m function
    | (i == (length word) - 1) = toBinaryArray(word!!i) m function
    | (i < (length word) - 1)  = toBinaryArray(word!!i) m function ++ concatenateBytes word (i+1) m function
    
-- Get binary array from word, completing the m bits from the represetation given by "function"
toBinaryArray c m function = completeByte (toBin(function c)) m

-- Transform to Int (Font: https://stackoverflow.com/questions/5921573/convert-a-string-representing-a-binary-number-to-a-base-10-string-haskell)
toInt = fst . head . readInt 2 (`elem` "01") digitToInt

    --------------- Encode Methods ------------------

-- Return the letter from the Base32 Alphabet
getBase32Representation n 
    | (n < (length alphabet) - 1) = (alphabet!!n)
    | (n > (length alphabet) - 1) = ' '

-- Adds N numbers at the end of the word to complete
completeWord word = do
    let num = 5 - ((length word) `mod` 5)
    word ++ (replicate num (intToDigit num))

-- Transform to ASCII
toASCII n = ord n

-- Encode a bits String in Base32
encodingBinary :: [Char] -> String
encodingBinary word
    | (length word == 5) = [getBase32Representation (toInt word)]
    | (length word) > 5 =  getBase32Representation (toInt (take 5 word)) : (encodingBinary (drop 5 word))

-- Encode a word to Base32
toBase32 word = do
    let binaryArray = concatenateBytes (completeWord word) 0 8 toASCII
    encodingBinary (binaryArray)


    --------------- Decode Methods ------------------

-- Return the index from the Alphabet
getBase32IndexRepresentation e = do
    fromJust $ elemIndex e alphabet

-- Transform ASCII value to char
toChar n = chr n

-- 
cleanWord word= do
    let num = digitToInt (word!!(length word - 1))
    let qty = (length word) - num
    take qty word

-- Decode a word in Base32
decodingBinary :: [Char] -> String
decodingBinary word
     | (length word == 8) = [toChar (toInt word)]
     | (length word) > 8 = toChar (toInt(take 8 word)) : (decodingBinary (drop 8 word))

fromBase32 word = do
     let binaryArray = concatenateBytes word 0 5 getBase32IndexRepresentation
     let word = decodingBinary binaryArray
     cleanWord word
    
main :: IO ()
main = do 
    num <- readLn
    forM_ [1 .. num] $ \i -> do
        word <- getLine
        if (i `mod` 2 == 0) then putStr((fromBase32 word) ++ " ") else putStr((toBase32 word) ++ " ") 
        

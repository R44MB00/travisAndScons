import System.Environment (getArgs)
import qualified Data.Char as Char

removePunc :: String -> String
removePunc xs = [ x | x <- xs, not (x `elem` ",()") ]

string2int :: String -> Integer
string2int s = read s :: Integer

isqrt :: Integer -> Integer
isqrt = floor . sqrt . fromIntegral

getDistance :: [Integer] -> Integer
getDistance xs = isqrt ((xs!!2 - xs!!0)^2 + (xs!!3 - xs!!1)^2) 

main = do
	[inpFile] <- getArgs
	input <- readFile inpFile
	let fileLines = map getDistance . map (map $ string2int) . map (map $ removePunc) . map words . lines $ input
	mapM print $ fileLines

import System.Environment (getArgs)
import qualified Data.Char as Char

capitalized :: String -> String
capitalized [] = []
capitalized (head:tail) = Char.toUpper head : tail

main = do
	[inpFile] <- getArgs
	input <- readFile inpFile
	let fileLines = map (map $ capitalized)  . map words . lines $ input
	mapM (putStrLn . unwords  ) fileLines

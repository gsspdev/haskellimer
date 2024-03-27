module MyLib (createZeroArray, promptForSequence, enumerateCharSequence, enumerateCharSequenceTests) where
import System.IO (hFlush, stdout)
import Data.Maybe (fromJust)

createZeroArray :: Int -> IO [Int]
createZeroArray n = return (replicate n 0)
-- Ex: zeroArray5 = createZeroArray 5
-- Rs: zeroArray5 == [0, 0, 0, 0, 0]

promptForSequence :: IO [Char]
promptForSequence = do
    putStr "Please enter a sequence of letters separated by spaces: "
    hFlush stdout
    input <- getLine
    return $ concat $ words input

enumerateCharSequence :: [Char] -> [Int]
enumerateCharSequence = map (fromJust . flip lookup mapping)
    where mapping = [('a', 0), ('c', 1), ('g', 2), ('t', 3)]
    
enumerateCharSequenceTests :: IO ()
enumerateCharSequenceTests = do
    print $ enumerateCharSequence ['a', 'c', 'g', 't'] == [0, 1, 2, 3]
    print $ enumerateCharSequence [] == []
-- lib Directory: Contains the library code. If your project is meant to be used as a dependency by other projects, this is where the reusable parts of your code live

module MyLib (createZeroArray, promptForSequence, enumerateSequence, enumerateSequenceTests) where
import System.IO (hFlush, stdout)
import Data.Maybe (fromJust)

createZeroArray :: Int -> IO [Int]
createZeroArray n = return (replicate n 0)
-- Ex: zeroArray5 = createZeroArray 5
-- Rs: zeroArray5 == [0, 0, 0, 0, 0]

promptForSequence :: IO [String] -> [Char]
promptForSequence = do
    putStr "Please enter a sequence of letters separated by spaces: "
    hFlush stdout
    input <- getLine
    return $ words input

enumerateCharSequence :: [Char] -> [Int]
enumerateCharSequence = map (fromJust . flip lookup mapping)
    where mapping = [('a', 0), ('c', 1), ('g', 2), ('t', 3)]
    
enumerateSequenceTests :: IO ()
enumerateSequenceTests = do
    print $ enumerateSequence ['a', 'c', 'g', 't'] == [0, 1, 2, 3]
    print $ enumerateSequence [] == []
module MyLib (someFunc, addTwoPlusTwo, createZeroArray, promptForNumberAndCreateArray, promptForSequence) where
import System.IO (hFlush, stdout)

createZeroArray :: Int -> IO [Int]
createZeroArray n = return (replicate n 0)
-- Example: zeroArray5 = createZeroArray 5
-- Creates: zeroArray5 == [0, 0, 0, 0, 0]

-- | Prompts the user for a number and then creates an array of that length filled with zeros.
promptForNumberAndCreateArray :: IO [Int]
promptForNumberAndCreateArray = do
    putStr "Please enter a number: "
    hFlush stdout -- Ensure the prompt is displayed before input is collected
    input <- getLine
    let number = read input :: Int -- Convert the input to an Int
    createZeroArray number

-- Example usage in main or another IO function:
-- main = do
--   zeroArray <- promptForNumberAndCreateArray
--   print zeroArray

promptForSequence ::IO [String]
promptForSequence = do
    putStr "Please enter a sequence of letters separated by spaces: "
    hFlush stdout
    input <- getLine
    return $ words input
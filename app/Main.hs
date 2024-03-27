module Main where
import qualified MyLib (someFunc, addTwoPlusTwo, createZeroArray, promptForNumberAndCreateArray, promptForSequence)

main :: IO ()
main = do
  
  
  MyLib.promptForNumberAndCreateArray >>= print

  user_sequence <- MyLib.promptForSequence
  let sequenceLength = length user_sequence
  putStrLn $ "The length of the sequence is: " ++ show sequenceLength
  zero_array_user_sequence <- MyLib.createZeroArray sequenceLength
  print zero_array_user_sequence
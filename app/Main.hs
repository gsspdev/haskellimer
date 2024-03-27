module Main where
import qualified MyLib (createZeroArray, promptForSequence, enumerateCharSequence, enumerateCharSequenceTests)

main :: IO ()
main = do

  user_sequence <- MyLib.promptForSequence
  let nullimer_seq = user_sequence
  let nullimer_len = length nullimer_seq
  putStrLn $ "The length of the nullimer is: " ++ show nullimer_len 
  nullimer_zero_array <- MyLib.createZeroArray nullimer_len 
  print nullimer_seq 
  print nullimer_zero_array

  -- let genome_seq :: [Char]

  -- The following code is not valid Haskell and needs to be rewritten.
  -- Assuming the intent is to compare each character of nullimer_seq with genome_seq
  -- and update nullimer_zero_array accordingly.
  let genome_seq = ['a', 'c', 'g', 't', 'c', 'g', 't'] -- Corrected syntax for list initialization
  updateZeroArray acc (n, g) = if n == g
                                then 1 : tail acc
                                else acc
  nullimer_zero_array_new' <- foldl updateZeroArray (nullimer_seq genome_seq)
      
  print "nullimer_zero_array = " ++ show nullimer_zero_array_new

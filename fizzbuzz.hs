{-# LANGUAGE FlexibleContexts #-}
import System.Environment

-- this program takes a number from the user (terminal) and finds the fizzBuzz upto that number
checkFizzBuzz :: (Integral a, Show a) => a -> String
checkFizzBuzz i
  | mod i (3 * 5) == 0 = "FizzBuzz"
  | mod i 3 == 0 = "Fizz"
  | mod i 5 == 0 = "Buzz"
  | otherwise = show i

fizzBuzz :: (Integral a, Show a) => [a] -> [String]
fizzBuzz [] = []
fizzBuzz x = map checkFizzBuzz x

-- This is required to get the int value for the number from the args-list
getNumVal :: IO Int
getNumVal = fmap (read . head) getArgs

main :: IO ()
main = do
  args <- getNumVal
  putStr $ unlines $ fizzBuzz [1 .. args]

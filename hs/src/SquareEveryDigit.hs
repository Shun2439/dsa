module SquareEveryDigit where

import Data.Char (digitToInt)

squareDigit :: Int -> Int
squareDigit n = (signum n) * (read $ concatMap (show . (^ 2) . digitToInt) (show (abs n)))

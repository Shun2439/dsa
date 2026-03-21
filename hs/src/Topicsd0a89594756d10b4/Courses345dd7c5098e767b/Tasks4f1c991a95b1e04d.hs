module Tasks4f1c991a95b1e04d where

main = do
    n <- readLn
    putStrLn $ case n of
        _
            | n `mod` 15 == 0 -> "FizzBuzz"
            | n `mod` 3 == 0 -> "Fizz"
            | n `mod` 5 == 0 -> "Buzz"
            | otherwise -> show n

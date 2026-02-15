main :: IO ()
main = do
    [a, b] <- map read . words <$> getLine

    putStrLn $ if isAmicable a b then "Yes" else "No"

sumOfDivisors :: Int -> Int
sumOfDivisors n = sum [x | x <- [1 .. n `div` 2], n `mod` x == 0]

isAmicable :: Int -> Int -> Bool
isAmicable a b =
    a /= b
        && sumOfDivisors a == b
        && sumOfDivisors b == a

module Main where

main :: IO ()
main = do
    [n, m] <- map read . words <$> getLine :: IO [Int]

    line2 <- getLine
    let as = map read (words line2) :: [Int]

    line3 <- getLine
    let bs = map read (words line3) :: [Int]

    let sumA = sum as
    let sumB = sum bs

    let result = m * sumA + n * sumB

    print result

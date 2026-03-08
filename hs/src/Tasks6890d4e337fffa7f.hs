module Tasks6890d4e337fffa7f where

main = do
    [a, b, c, d] <- map read . words <$> getLine :: IO [Int]
    print $ b - a - (d - c)

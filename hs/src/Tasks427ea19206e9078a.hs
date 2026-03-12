module Tasks427ea19206e9078a where

main = do
    [a, b] <- map read . words <$> getLine :: IO [Int]
    [x, y] <- map read . words <$> getLine :: IO [Int]

    putStrLn $
        if a >= x && a + b >= y
            then "Yes"
            else "No"

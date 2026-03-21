module Tasks30c82af61dcf9654 where

main = do
    [n, m] <- map read . words <$> getLine :: IO [Int]
    putStrLn $
        if n >= 70 && m >= 70 && n + m >= 160
            then "Yes"
            else "No"

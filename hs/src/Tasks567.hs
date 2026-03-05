module Tasks567 where

main :: IO ()
main = do
    [l, r] <- map read . words <$> getLine :: IO [Int]
    let result = sum [(2 * i - 1) ^ 2 | i <- [l .. r]]
    print result

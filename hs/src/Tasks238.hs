main :: IO ()
main = do
    [l, r] <- map read . words <$> getLine :: IO [Int]
    let result = length (filter (\x -> show x == reverse (show x)) [l .. r])
    print result

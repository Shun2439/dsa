main :: IO ()
main = do
    [l, r] <- map read . words <$> getLine :: IO [Int]

    let result =
            length
                [ (i, j)
                | i <- [l .. r]
                , j <- [i + 1 .. r]
                , i `mod` 10 == j `mod` 10
                ]
    print result

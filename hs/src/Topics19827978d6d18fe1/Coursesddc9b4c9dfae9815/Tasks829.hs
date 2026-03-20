module Tasks829 where

main = do
    n <- readLn :: IO Int
    a <- map read . words <$> getLine :: IO [Int]
    q <- readLn

    solve q a

solve 0 _ = return ()
solve q a = do
    line <- getLine
    case map read (words line) of
        (0 : k : v : _) -> do
            let (before, after) = splitAt k a
            solve (q - 1) (before ++ [v] ++ after)
        (1 : k : _) -> do
            let (before, _ : after) = splitAt k a
            solve (q - 1) (before ++ after)
        (2 : v : _) -> do
            print $ length (filter (== v) a)
            solve (q - 1) a
        _ -> return ()

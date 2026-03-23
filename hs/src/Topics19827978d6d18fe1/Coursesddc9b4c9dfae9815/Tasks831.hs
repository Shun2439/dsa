module Tasks831 where

main = do
    n <- readLn :: IO Int
    a <- map read . words <$> getLine :: IO [Int]
    q <- readLn

    solve q a

solve 0 _ = return ()
solve q a = do
    line <- getLine
    case map read (words line) of
        [0] -> do
            solve (q - 1) (reverse a)
        [1, v] -> do
            solve (q - 1) (a ++ [v])
        [2] -> do
            if null a
                then do
                    putStrLn "Error"
                    solve (q - 1) a
                else do
                    print (last a)
                    solve (q - 1) (init a)
        _ -> return ()

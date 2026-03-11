module Tasks38bc1bb1fab9d052 where

main = do
    n <- readLn
    putStrLn $ case n of
        _
            | n >= 90 && n <= 100 -> "A"
            | n >= 80 -> "B"
            | otherwise -> "C"

module Tasks39e890d8407db440 where

main = do
    s <- getLine
    putStrLn $
        if length s <= 6
            then "dangerous"
            else "safe"

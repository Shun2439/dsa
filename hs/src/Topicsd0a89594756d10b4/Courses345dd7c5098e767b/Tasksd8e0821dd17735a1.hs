module Tasksd8e0821dd17735a1 where

main = do
    s <- getLine
    putStrLn $
        if s == "password"
            then "dangerous"
            else "safe"

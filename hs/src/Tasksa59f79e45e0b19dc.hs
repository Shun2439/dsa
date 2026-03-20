module Tasksa59f79e45e0b19dc where

main = do
    s <- getLine
    print $ length (filter (== 'o') s)

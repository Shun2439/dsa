module Tasksce9f871dece84b80 where

solve :: String -> String
solve s =
    if any (\(a, b) -> a == b) (zip s (drop 1 s))
        then "Yes"
        else "No"

main :: IO ()
main = do
    s <- getLine
    putStrLn $ solve s

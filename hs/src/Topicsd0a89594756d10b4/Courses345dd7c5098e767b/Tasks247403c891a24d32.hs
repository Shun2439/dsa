module Tasks247403c891a24d32 where

import Text.Read (readMaybe)

main = do
    input <- getLine
    case readMaybe input of
        Just n -> putStrLn $ judge n
        Nothing -> putStrLn "invalid"
judge :: Int -> String
judge n
    | n == 100 = "S"
    | n >= 90 = "A"
    | n >= 80 = "B"
    | n >= 70 = "C"
    | n >= 60 = "D"
    | n >= 50 = "E"
    | otherwise = "F"

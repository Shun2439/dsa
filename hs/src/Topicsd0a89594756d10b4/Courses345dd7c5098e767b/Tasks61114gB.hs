module Tasks61114gB where

isLeapYear :: Int -> String
isLeapYear n
    | n `mod` 400 == 0 = "Yes"
    | n `mod` 100 == 0 = "No"
    | n `mod` 4 == 0 = "Yes"
    | otherwise = "No"

main :: IO ()
main = do
    n <- readLn
    putStrLn (isLeapYear n)

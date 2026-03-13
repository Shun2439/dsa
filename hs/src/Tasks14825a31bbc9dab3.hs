module Tasks14825a31bbc9dab3 where

main = do
    n <- readLn
    putStrLn $
        if n == 2020
            then "No"
            else
                if n `mod` 4 == 0 || n == 2021
                    then "Yes"
                    else "No"

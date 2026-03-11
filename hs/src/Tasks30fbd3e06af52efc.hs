module Tasks30fbd3e06af52efc where

main = do
    n <- readLn
    putStrLn $
        if n >= 0 && n <= 100
            then "valid"
            else "invalid"

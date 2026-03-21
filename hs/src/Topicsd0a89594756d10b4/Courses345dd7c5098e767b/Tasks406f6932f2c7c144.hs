module Tasks406f6932f2c7c144 where

main = do
    k <- readLn
    let digits = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]
    print (digits !! k)

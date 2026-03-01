module Tasks569 where

main :: IO ()
main = do
    n <- readLn
    let result = sum [i * j | i <- [1 .. n - 1], j <- [i + 1 .. n]]
    print result

module Tasks92eead0a6845cc99 where

main :: IO ()
main = do
    n <- readLn :: IO Double
    print (round (n * 1.1))

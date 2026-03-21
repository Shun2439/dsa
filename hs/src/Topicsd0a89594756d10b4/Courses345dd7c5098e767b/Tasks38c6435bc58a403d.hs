module Tasks38c6435bc58a403d where

main :: IO ()
main = displayCalc 123 456

displayCalc :: Int -> Int -> IO ()
displayCalc x y = do
    putStrLn $ show x ++ " * " ++ show y
    print $ 123 * 456

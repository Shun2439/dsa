module Denno2088CB01 where

import Control.Monad (replicateM)

main :: IO ()
main = do
    line1 <- getLine
    let n = read line1 :: Int

    rs <- replicateM n getLine

    print n
    mapM_ putStrLn rs

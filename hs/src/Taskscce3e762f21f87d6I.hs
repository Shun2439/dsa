module Taskscce3e762f21f87d6I where

import Control.Monad (replicateM)

main :: IO ()
main = do
    nums <- replicateM (2) readLn
    print $ sum nums

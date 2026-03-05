module Tasks7824423a3b09551b where

import Control.Monad (replicateM)

main :: IO ()
main = putStrLn . concat =<< replicateM 2 getLine

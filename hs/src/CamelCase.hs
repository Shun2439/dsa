module CamelCase where

import Data.Char (toUpper)

{- 20260224 -}

toCamelCase :: String -> String
toCamelCase [] = []
toCamelCase (x : xs) = x : camelize xs
  where
    camelize [] = []
    camelize (y : ys)
        | y `elem` "-_" = case ys of
            [] -> []
            (z : zs) -> toUpper z : camelize zs
        | otherwise = y : camelize ys

module Tasks569P where

main :: IO ()
main = readLn >>= print . solve

solve :: Integer -> Integer
solve n = (s1 ^ 2 - s2) `div` 2
  where
    s1 = n * (n + 1) `div` 2
    s2 = n * (n + 1) * (2 * n + 1) `div` 6

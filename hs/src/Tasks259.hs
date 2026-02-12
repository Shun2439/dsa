import Control.Monad (replicateM)

main :: IO ()
main = do
  line1 <- getLine
  let n = read line1 :: Int
  
  line2 <- getLine
  let a = map read (words line2) :: [Int]

  let ans = length [ (i, j, k)
                   | i <- [0..n-1]
                   , j <- [i+1..n-1]
                   , k <- [j+1..n-1]
                   , let ai = a !! i
                   , let aj = a !! j
                   , let ak = a !! k
                   , aj >= ai && aj >= ak ]

  print ans



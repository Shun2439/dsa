import Data.List (sort)

main :: IO ()
main = do
    line1 <- getLine
    let n = read line1 :: Int

    line2 <- getLine
    let l = sort (map read (words line2) :: [Int])

    let ans =
            length
                [ (i, j, k)
                | i <- [0 .. n - 1]
                , j <- [i + 1 .. n - 1]
                , k <- [j + 1 .. n - 1]
                , let li = l !! i
                , let lj = l !! j
                , let lk = l !! k
                , li + lj > lk
                ]
    print ans

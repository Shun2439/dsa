import Data.List (tails)

main :: IO ()
main = do
    line1 <- getLine
    let n = read line1 :: Int

    line2 <- getLine

    let a = map read (words line2) :: [Int]

    let ans =
            length
                [ (i, j, k)
                | (i : j : k : _) <- tails a
                , i <= j && j >= k
                ]
    print ans

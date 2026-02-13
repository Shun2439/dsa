import Data.List (sort, tails)

main :: IO ()
main = do
    _ <- getLine
    line2 <- getLine
    let l = sort (map read (words line2) :: [Int])

    let ans =
            length
                [ (a, b, c)
                | (a : as) <- tails l
                , (b : bs) <- tails as
                , (c : _) <- tails bs
                , a + b > c
                ]

    print ans

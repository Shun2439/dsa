module MultiplesOf3Or5 where

main :: IO ()
main = do
    number <- (read <$> getLine) :: IO Int
    let ans =
            sum
                [ i
                | i <- [1 .. number - 1]
                , i `mod` 3 == 0 || i `mod` 5 == 0
                ]
    print ans

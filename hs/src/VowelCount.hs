getCount :: String -> Int
getCount = length . filter (`elem` "aiueo") -- 関数合成

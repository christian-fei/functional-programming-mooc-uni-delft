dec2int :: (Num a) => [a] -> a
dec2int = foldl (\x acc -> x*10 + acc) 0

dec2int' = foldr (\x acc -> x*10 + acc) 0

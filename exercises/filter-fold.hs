filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldl (\xs x -> if p x then x : xs else xs) []

filter'' p = foldr (\x xs -> if p x then x : xs else xs) []

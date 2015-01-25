filter' :: (a -> Bool) -> [a] -> [a]
filter' f [] = []
filter' p (x:xs)
  | p x = x : filter' p xs
  | otherwise = filter p xs

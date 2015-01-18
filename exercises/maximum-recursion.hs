maximum' :: Ord a => [a] -> a
maximum' [] = error "Empty list"
maximum' [a] = a
maximum' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = maximum' xs

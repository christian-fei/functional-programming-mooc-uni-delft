replicate' :: (Num n, Ord n) => n -> x -> [x]
replicate' n x
  | n <= 0    = []
  | otherwise = x:replicate' (n-1) x


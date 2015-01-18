replicate' :: Int -> a -> [a]
replicate' n _
  | n <= 0 = []
replicate' n x = x : replicate' (n-1) x

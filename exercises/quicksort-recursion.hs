quicksort :: (Num a, Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = smaller ++ [x] ++ greater
  where
    smaller = quicksort [x' | x' <- xs, x' < x]
    greater = quicksort [x' | x' <- xs, x' >= x]

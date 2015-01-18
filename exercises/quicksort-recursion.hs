quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerSorted = quicksort [x' | x' <- xs, x' < x]
      greaterSorted = quicksort [x' | x' <- xs, x' >= x]
  in smallerSorted ++ [x] ++ greaterSorted

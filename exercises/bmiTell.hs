bmiTell :: (RealFloat a) => a -> a -> [Char]
bmiTell a b
  | bmi < skinny = "You skinny AF"
  | bmi > whale = "You whale"
  | otherwise = "You fat fuck"
  where bmi = a * b
        skinny = 20
        fat = 30
        whale = 40

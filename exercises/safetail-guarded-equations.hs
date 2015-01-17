safetail :: [a] -> [a]
safetail xs | null xs = []
            | otherwise = take (length xs - 1) xs

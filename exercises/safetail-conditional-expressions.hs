-- safetail using conditional expressions

safetail :: [a] -> [a]
safetail xs = if null xs then [] else take (length xs - 1) xs

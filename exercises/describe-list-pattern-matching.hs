describeList :: [a] -> String
describeList [] = "Empty list"
describeList [a] = "Singleton list"
describeList xs = "Long list"


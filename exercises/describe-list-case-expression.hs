describeList :: [a] -> String
describeList xs = case xs of
                          [] -> "Empty list"
                          [a] -> "Singleton list"
                          xs -> "Long list"

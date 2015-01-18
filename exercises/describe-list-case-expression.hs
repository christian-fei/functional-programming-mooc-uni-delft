describeList :: [a] -> String
describeList xs = "The list is an: " ++ case xs of
                          [] -> "Empty list"
                          [a] -> "Singleton list"
                          xs -> "Long list"

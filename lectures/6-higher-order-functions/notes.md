A higher order function is a function which takes a function as an arguments or returns a function as a result.

```
twice :: (a -> a) -> a -> a
twice f x = f (f x)
```

Why are higher order functions useful?

We can use them to strip out repetition. Higher order functions help us reason about the algebraic properties of our programs.


# The map function

```
map :: (a -> b) -> a -> b

> map (+1) [1,2,3,4]
```

Map could be defined in multiple ways:

```
map :: (a -> b) -> a -> b
map f xs = [f x | x <- xs]

map f (x:xs) = f x : map f xs
```


# The filter function

Elements that do not satisfy the conditions are stripped away:

```
filter (a -> Bool) -> [a] -> [a]

> filter even [1..10]
```

Filter can be defined in multiple ways, using list comprehensions and recursion:

```
filter (a -> Bool) -> [a] -> [a]
-- list comprehension
filter f xs = [x | x <- xs, f x]

-- recursion
filter f [] = []
filter f (x:xs)
  | f x = x : filter f xs
  | otherwise filter f xs
```


We can see that filter and map (defined recursively) follow a similar pattern, that we can abstrat in another function. We will see how foldr will come in handy for this.

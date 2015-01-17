List comprehensions are a way to write code that manipulate collections.

It follows the idea of sets in mathematics, elements come from a specific set of numbers and we apply a transformation/function on them.
In Haskell we can use *generators* to have a set of number to work on.

```
[(x,y) | x <- [1..3], y <- [1..10]]
```

We can look at this list comprehension as a nested for loop.

## Guards

We can use guards to filter out values from a list.

```
[x | x <- [1..10], even x]
```

We could define our `prime` function (or better *predicate* in this case) to determine if a number is prime.

```
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

primes :: Int -> [Int]
primes n = [x | x <- [1..n], factors x == [1,x]]
```



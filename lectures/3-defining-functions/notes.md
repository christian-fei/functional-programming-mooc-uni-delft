# Conditional expressions

```
signum :: Int -> Int
signum n = if n > 0 then 1 else if n == 0 else -1
```







# Guarded equations

```
abs :: Int -> Int
abs n = if n >= 0 then n else -n

-- or

abs n | n >= 0    = n
      | otherwise = -n
```





# Pattern matching

Patterns are matched in order of definition.

An example when defining &&

```
(&&)' :: Bool -> Bool -> Bool
True &&' True = True
True &&' False = False
False &&' False = False
False &&' True = False
```

Elements of pattern matching must be unique, this would result in an error:

```
b && b = b
```

Because the compiler cannot implicitly check for equality.






# List patterns

```
[1,2,3,4]

-- is syntactic sugar for

1:2:3:4:[]

-- or
(1:(2:(3:(4:[]))))
```

Using 'cons' (:).


For example defining head and tail with list patterns:

```
head :: [a] -> a
head (x:_) = x

tail :: [a] -> [a]
tail (_:xs) = xs
```

Note: the parens have to be used in this case because application binds strongest.
Else it would mean `head of x 'cons' anything`








# Lambda expressions

```
\x -> x + x
```


Lambda expressions are often used to express your intent better, especially when defining curried functions.

```
add x y = x +y
add = \x -> (\y -> x + y)
```


# Sections

An infix operator (means that it's written between two parameters, like `+`) can be converted to a curried function using sections:

```
1+2

(+) 1 2
```



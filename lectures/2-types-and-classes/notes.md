A type is a collection of related values.
For example the type `Bool` contains the values `True` and `False`


Type errors happend when a function does not expect a certain value to be passed in of an unsupported type.

In Haskell when evaluating an expression e and produces a value of a certain type t, we can say:

```
e :: t
```

which means `e has type t`.

The type of an expression can be calculated at compile time using [type inference](https://www.haskell.org/haskellwiki/Type_inference).





## Basic Types

**Bool** logical values

**Char** single character

**String** String/List of characters

**Int** fixed precision integers (32/64 bits)

**Integer** arbitrary precision integers

**Float** floating point numbers





## List Types

Is a generic type, say polymorphic type.

It is a list of values of the same type.

```
[False,True,False] :: [Bool]

['H','e'] :: [Char]
```


`[t]` denotes the type t of elements in the list


List of lists of elements of the same type

```
[['c'],['d','e']] :: [[Char]]
```




## Tuple types

The type of a tuple contains the length, but the values can be of arbitrary type.

```
(True,False) :: (Bool,Bool)

(True,'C',False) :: (Bool,Char,Bool)
```





## Function types

A function is a mapping from one type to another.

```
not :: Bool -> Bool

isDigit :: Char -> Bool
```

In general we can say that `t1 -> t2` maps values of the type t1 (domain of the function) to values of the type t2 (range of the function).



## Curried functions

Functions can also return functions.

E.g.

```
add :: (Int, Int) -> Int

add' :: Int -> (Int -> Int)  -- curried function
```

Curried functions take their arguments one at a time. They are named after the Haskell Curry.

In Haskell it is very common to use curried functions.

Every function that takes at least 2 arguments, can be turned into a curried function.


---

When definining a curried function the parentheses apply to the right (because it is so common, they are left away)(function type):

```
Int -> Int -> Int -> Int
Int -> (Int -> (Int -> Int))
```

When applying a function the parentheses asoociate to the left (expression)

```
mult x y z
((mult x) y) z
```



## Polymorphic functions

If a function contains a type variable (generic) it's called a polymorphic function.

Type variables start with a lowercase letter, concrete Types with uppercase letter.

```
length :: [a] -> Int
```

Length takes a list of variables of type a and returns an Integer.



## Overloaded functions

A function is overloaded if the type is constrained to a specific type.
You could see it as if the function only accepts value that implement a specific interface, like in OO.

```
sum :: Num a => [a] -> a
```

Sum takes a list of values of type a and returns a single value of type a.

Overloaded functions are denoted with `=>`.

```
sum [1,2,3]
sum [1.1,2.2,3.3]

sum ['a','b']
> ERROR
```

Haskell has a number of type classes like:

```
Num : numeric type
Eq  : Equality type
Ord : Ordered type
```

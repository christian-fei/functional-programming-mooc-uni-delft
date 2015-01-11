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






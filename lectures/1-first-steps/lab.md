if you make syntactic mistakes, the interpreter raises a parse error.

```
6 * (1 + 2
parse error (possibly incorrect indentation or mismatched brackets)
```

Booleans have some special operators like `||`

```
True || False
> True

not (not (not True))
> False
```


### Errors
Static errors happen if you make  a syntactic mistake or have a scoping error (when a module has not been loaded).
So there are some errors the interpreter can intercept before the program is loaded.

Dynamic errors happen when the program is executed, at runtime.

Like `head ""`, gives you `*** Exception: Prelude.head: empty list`

If you miss to terminate a string like `"hello` you get a lexical error.

The 'most frequent' kind of error is the type error:
There has been a semantical error in your program, for example when you try to apply the `not` function on a string:

```
not "hello"

> Couldn't match expected type ‘Bool’ with actual type ‘[Char]’
> In the first argument of ‘not’, namely ‘"hello"’
> In the expression: not "hello"
> In an equation for ‘it’: it = not "hello"
```


To get more information about the type of a variable or expression, you can get help from the ghci:

```
:t "Hello"

> "Hello" :: [Char]
```

----


If we take a closer look at `:t length` we can see that it takes a new type of argument, it's a polymorphic type.

```
:t length

length :: [a] -> Int
```

In fact `length` works with following examples:

```
length [1,2,3]
length ["Hello","hee"]
length [[1,2],[1,2,3,4,5]]
```

All elements of a list must be of the same type!



## Tuples

Haskell also provides tuples, they have a fixed length and can contain elements of different types

```
(1,2)
(1,"HELlo")

fst(1,2)
> 1

snd (1,2)
> 2
```





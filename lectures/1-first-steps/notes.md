Glasgow Haskell Compiler - GHC

most used implementation of Haskell, comes with compiler and interpreter.

When executing `ghci` (repl for haskell, interative interpreter) it show us information about the standard library functions, the prelude.

##### examples

select the first element of a list

```
head [1,2,3,4,5]

1
```

---

remove the first element from a list

```
tail [1,2,3,4,5]

[2,3,4,5]
```

---

select the nth element from a list

```
[1,2,3,4,5] !! 2

3
```

There's a good reason for the `!!` operator.
In Haskell Lists are not Arrays.
This indexes the list and returns the nth element.
But if you find yourself using this operator, you probably are still in the mindset of imperative programming and should use higher order functions like map, filter, fault to perform operations over lists.

----

select the first n elements of a list

```
take 3 [1,2,3,4,5]

[1,2,3]
```

---

drop the first n elements of a list with `drop`

---

calculate the length of the list with `length`

Since Lists in Haskell are not like Arrays in other languages,
`length` is not a constant time operation, but is linear

---

`product [1,2,3,4,5]` is `120`

---

appending two lists is done with the `++` operator:

```
[1,2,3] ++ [4,5]

[1,2,3,4,5]
```
---

`reverse [1,2,3,4,5]` results in `[5,4,3,2,1]`







### Function application

In Haskell function application is denoted by whitespace, multiplication with `*`

```
f a b + c*d
```

function application binds strong than other operations

```
f a + b
```

means `(f a) + b`


A comparison to mathematics:

| Mathematics |    Haskell   |
|-------------|--------------|
| f(x)        | f x          |
| f(x,y)      | f x y        |
| f(g(x))     | f (g x)      |
| f(x,g(y))   | f x (g y)    |
| f(x) g(y)   | f x * g y    |




### Haskell scripts

You can define your own 'scripts' (as a program or module is called in the Haskell community).
This is done in a simple text file, typically with the extension `.hs`


### My first script

test.hs
```
double x = x +x

quadrouple x = double (double x)
```

factorial.hs
```
factorial n = product [1..n]
```


GHCi does not automatically reload your scripts during runtime, so you have to call `:reload` in the REPL.






### Naming requirements

Function and parameters must begin with a **lowercase letter**.

A type has to begin with an uppercase letter.

By convention list arguments have `s` as suffix, `xs`,`ns`. `nss` is for example a list of lists

Usually parameters are short in Haskell.



### The layout rule

Whitespace is significant.

This is powerful when defining a sequence of definitions to avoid typing unnecessary delimiters and characters.

e.g.
```
a = b + c
    where
      b = 1
      c = 2
d = a * 2
```





### Useful GHCi commands

| Command     | Meaning                |
|-------------|------------------------|
| :load name  | load script name       |
| :reload     | reload current script  |
| :edit name  | edit script name       |
| :edit       | edit current script    |
| :type expr  | show type of expr      |
| :?          | show all commands      |
| :quit       | quit ghci              |





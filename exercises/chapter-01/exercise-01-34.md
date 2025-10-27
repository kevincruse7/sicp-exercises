# Exercise 1.34

```scm
(define (f g)
  (g 2))

(f f)
```

By following the evaluation rules for Scheme, we can observe that this program evaluates to:

```scm
(f 2)
```

```scm
(2 2)
```

Since the literal `2` isn't a valid operator in Scheme, this program will produce an error.

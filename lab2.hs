-- 2.1

{-
ghci> 2^100
1267650600228229401496703205376
ghci> (12+23)*(40-21)
665
ghci> 2^100 / ((12+23)*(40-21))
1.9062415041026007e27
ghci> sqrt 2
1.4142135623730951
ghci> sqrt ((12+23)*(40-21))
25.787593916455254
ghci> 2+ -3

<interactive>:6:1: error:
    Precedence parsing error
        cannot mix `+' [infixl 6] and prefix `-' [infixl 6] in the same infix expression
ghci> 2+(-3)
-1
-}


{- Task 1

Check the associativity and the strength of binding for + and - operators.
-}

{-
ghci> :i +
type Num :: * -> Constraint
class Num a where
  (+) :: a -> a -> a
  ...
        -- Defined in `GHC.Num'
infixl 6 +
ghci> :i -
type Num :: * -> Constraint
class Num a where
  ...
  (-) :: a -> a -> a
  ...
        -- Defined in `GHC.Num'
infixl 6 -
-}

-- 2.2

{-
ghci> 1234 `rem` 3
1
ghci> rem 1234 4
2
ghci> rem 1234 2
0
-}

-- 2.3

{-
ghci> :t pi
pi :: Floating a => a
ghci> let f x = 2*x+1
ghci> f 5
11
-}

-- 2.3.1

{-
ghci> let sphereVolume r = 4/3 * pi * r^3
ghci> sphereVolume 1
4.1887902047863905
-}

-- 2.3.2

{-
ghci> let coneVolume r h = 1/3*pi*r^2 * h
ghci> coneVolume 1 2
2.0943951023931953
-}

-- 2.4

{-
ghci> :l solids
[1 of 2] Compiling Main             ( solids.hs, interpreted )
Ok, one module loaded.
ghci> sphereVolume 1
4.1887902047863905
ghci> coneVolume 1 2
2.0943951023931953
-}
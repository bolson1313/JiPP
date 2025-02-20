-- Homework 1

-- 1.6

{- Task 4 *

Find description of rem and gcd functions in Haskell installation folder.
-}

{-
Integer division truncated toward zero.
rem :: a -> a -> a |infixl 7|

gcd x y is the non-negative factor of both x and y of which every common factor of x and y is also a factor; for example gcd 4 2 = 2, gcd (-4) 6 = 2, gcd 0 4 = 4. gcd 0 0 = 0. (That is, the common divisor that is "greatest" in the divisibility preordering.)
gcd :: Integral a => a -> a -> a
-}

-- 1.7

{- Task 6 *

Compile and run silnia.hs or factorial.hs file from the cmd command-line interpreter.
-}

{-
ghci> :l silnia
Ok, one module loaded.
ghci> silnia 5
120
ghci> main 
Podaj liczbę naturalną:
5
120
-}

-- 2.1

{- Task 2 *

Check the associativity and the strength of binding for operators: * / ^
-}

{-
ghci> :i *
type Num :: * -> Constraint
class Num a where
  ...
  (*) :: a -> a -> a
  ...
        -- Defined in `GHC.Num'
infixl 7 *
ghci> :i ^
(^) :: (Num a, Integral b) => a -> b -> a       -- Defined in `GHC.Real'
infixr 8 ^
ghci> :i /
type Fractional :: * -> Constraint
class Num a => Fractional a where
  (/) :: a -> a -> a
  ...
        -- Defined in `GHC.Real'
infixl 7 /
-}

-- 2.2.2

{-
Korzystając z funkcji rem sprawdź, czy 113 jest liczbą pierwszą.
-}

{-
ghci> 113 `rem` 2
1
ghci> 113 `rem` 3
2

113 jest liczbą pierwszą
-}

-- 2.3.3

{-
Korzystając z polecenia let zdefiniuj funkcje wyznaczające: objętość prostopadłościanu (cuboidVolume).
-}

{-
ghci> let cuboidVolume l w h = l*w*h
ghci> cuboidVolume 1 2 3
6
-}

-- 2.5

{-
Do modułu Solids dopisz funkcję wyznaczającą objętość ostrosłupa o podstawie kwadratowej (pyramidVolume). Przetestuj działanie tej funkcji.
-}

{-
pyramidVolume :: Floating a => a -> a -> a  --objetosc ostroslupa
pyramidVolume base sideHeight =  1/3 * base * base * sideHeight

ghci> :l solids
[1 of 2] Compiling Main             ( solids.hs, interpreted )
Ok, one module loaded.
ghci> pyramidVolume 4 9
48.0
-}
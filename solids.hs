-- 2.4

sphereVolume :: Floating a => a -> a    --objetosc kuli
sphereVolume r = 4/3 * pi * r^3


coneVolume :: Floating a => a -> a -> a --objetosc stozka
coneVolume r h = 1/3*pi*r^2 * h

pyramidVolume :: Floating a => a -> a -> a  --objetosc ostroslupa
pyramidVolume base sideHeight =  1/3 * base * base * sideHeight

{-
ghci> sphereVolume 1
4.1887902047863905
ghci> coneVolume 1 2
2.0943951023931953
-}
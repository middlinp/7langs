module PrimeFactors (primeFactors) where

primeFactors :: Integer -> [Integer]
primeFactors x = primeFactorsTwoArgs x 2
   where primeFactorsTwoArgs x c
            | x < c = []
            | x `mod ` c == 0 = [c] ++ primeFactorsTwoArgs (x `div` c) c
            | otherwise = primeFactorsTwoArgs x (c + 1)

This Haskell code suffers from a subtle bug related to lazy evaluation and infinite lists:

```haskell
import Data.List (intersect)

findCommon :: [Int] -> [Int] -> Maybe Int
findCommon xs ys = listToMaybe (xs `intersect` ys)

main :: IO ()
main = do
  let xs = [1..] -- Infinite list
      ys = [1000..2000]
  print (findCommon xs ys)
```

The issue is that `intersect` operates lazily.  It will try to compare each element of the infinite list `xs` with all elements of `ys` before returning a result, potentially leading to a non-termination (the program will hang indefinitely).
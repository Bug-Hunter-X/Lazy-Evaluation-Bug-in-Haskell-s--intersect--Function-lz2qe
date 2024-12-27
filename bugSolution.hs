The solution involves adding a check to limit the search in the infinite list to avoid the hang:

```haskell
import Data.List (intersect)
import Data.Maybe (listToMaybe)

findCommon :: [Int] -> [Int] -> Maybe Int
findCommon xs ys = listToMaybe $ takeWhile (<2001) xs `intersect` ys

main :: IO ()
main = do
  let xs = [1..] -- Infinite list
      ys = [1000..2000]
  print (findCommon xs ys)
```

By using `takeWhile (<2001) xs`, we restrict the comparison to only the elements of `xs` that are less than 2001, ensuring that the intersection operation terminates and the program completes successfully.
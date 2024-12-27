# Haskell Lazy Evaluation Bug

This repository demonstrates a subtle bug in Haskell code related to lazy evaluation and the `intersect` function from `Data.List`.  When used with an infinite list, the program can hang indefinitely.

## Bug Description
The `intersect` function, when applied to an infinite list and a finite list, will not terminate because it explores the infinite list for potential intersections before returning a result. 

## Solution
The provided solution demonstrates how to modify the function to make it more robust by limiting the search within the infinite list.
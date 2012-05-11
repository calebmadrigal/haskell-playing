main = let sumOfSquares = sum [n^2 | n <- [1..100]]
           squareOfSums = (sum [1..100])^2
        in print $ squareOfSums - sumOfSquares

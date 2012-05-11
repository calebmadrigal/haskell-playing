fib :: (Num a) => a -> a
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main = let fib_sequence = map fib [1..]
           even_fibs = [n | n <- fib_sequence, n `mod` 2 == 0]
           result_set = takeWhile (\n -> n < 4000000) even_fibs
       in  do print result_set
              print $ sum result_set


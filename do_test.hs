import IO
factorial n = product [1..n]
main = do putStr "Enter a positive integer: "
          hFlush stdout
          n <- readLn
          if n < 0
             then putStrLn "Must be positive"
             else do putStr "factorial = "
                     print (factorial n)

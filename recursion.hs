myreverse :: [a] -> [a]
myreverse [] = []
myreverse (x:xs) = myreverse xs ++ [x]

myzip :: [a] -> [b] -> [(a,b)]
myzip _ [] = []
myzip [] _ = []
myzip (x:xs) (y:ys) = (x,y):myzip xs ys

mymaximum :: Ord(a) => [a] -> a
mymaximum [] = error "Can't use empty list"
mymaximum [x] = x
mymaximum (x:xs) = max x (mymaximum xs)

quicksort :: Ord(a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = let smaller = quicksort [i | i <- xs, i <= x]
                       larger = quicksort [i | i <- xs, i > x]
                   in smaller ++ [x] ++ larger

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f x y = f y x

map' :: (a -> b) -> [a] -> [b]
map' f [] = []  -- or could be "map' _ [] = []"
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs) = if p x then x : filter' p xs
                   else filter' p xs

filter2 :: (a -> Bool) -> [a] -> [a]
filter2 _ [] = []
filter2 p (x:xs)
        | p x = x : filter2 p xs
        | otherwise = filter2 p xs

collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n 
    | even n = n : collatz (n `div` 2)
    | odd n = n : collatz (3 * n + 1)


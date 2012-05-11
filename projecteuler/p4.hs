import Data.List

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs

palindromeProducts = nub [a*b | a <- [1..999], b <- [1..999]]

main = print $ maximum [pal | pal <- palindromeProducts, isPalindrome (show pal)]


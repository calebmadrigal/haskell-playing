import qualified Data.Map as Map
import qualified Data.Set as Set
import Data.Char
import Data.List

nym :: [Char] -> [Char]
nym str = intersperse '.' $ map toUpper str

-- map (\l@(x:xs) -> (x,length l)) . group . sort $ [1,1,1,1,2,2,2,2,3,3,2,2,2,5,6,7] 

-- sortBy (compare `on` fst) [(5,2),(2,6),(1,6)]

pairsEqual [] = True
pairsEqual lst = and $ map (\x -> (fst x) == (snd x)) lst

encode :: Int -> String -> String
encode shift msg =
    let ords = map ord msg
        shifted = map (+ shift) ords
    in  map chr shifted

decode :: Int -> String -> String
decode shift msg = encode (negate shift) msg

findKey :: (Eq k) => k -> [(k,v)] -> v
findKey key dict = snd . head . filter (\(k,v) -> k == key) $ dict

findKey' :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey' key [] = Nothing
findKey' key ((k,v):xs) = if key == k
                            then Just v
                            else findKey' key xs


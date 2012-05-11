import qualified Data.Map as Map

instance Functor Map where
    fmap f [] = []
    fmap f (Map k v) = (Map k (f v))

lockers = Map.fromList
    [("caleb", 1000)
    ,("whitney",1000)
    ,("john",1100)]

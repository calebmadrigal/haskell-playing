data Gender = Male | Female deriving (Show)

data Person = Person { name :: String
                     , age :: Int
                     , sex :: Gender
                     } deriving (Show)

marry :: Person -> Person -> String
marry bride groom = (name bride) ++ " marries " ++ (name groom)

main = 
    let caleb = Person { name = "Caleb", age = 26, sex = Male }
        whitney = Person "Whitney" 25 Female
        in do print caleb
              print (name whitney)
              putStrLn (marry whitney caleb)

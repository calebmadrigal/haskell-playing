subFormat subChar "" substr = ""
subFormat subChar format "" = format
subFormat subChar (f:fs) (x:xs) | f == subChar  = x : (subFormat subChar fs xs)
                                | otherwise     = f : (subFormat subChar fs (x:xs))

--subFormat subChar format subStr = if head format == subChar
--                                    then (head subStr) : (subFormat subChar (tail format) (tail subStr))
--                                    else (head format) : (subFormat subChar (tail format) subStr)

main = do putStrLn $ subFormat '_' "__-__-____" "11111985"
          putStrLn $ subFormat '_' "__-__-____" "123"
          putStrLn $ subFormat '_' "__-__-____" "101019509999"

main = interact shortLinesOnly

shortLinesOnly input = 
    let allLines = lines input
        shortLines = filter (\line -> length line < 10) allLines
        result = unlines shortLines
    in  result


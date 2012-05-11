import IO

letters = map (\letter -> "@\"" ++ (letter : "") ++ "\",") ['A'..'Z']

printLetters "" = putStrLn ""
printLetters (letter:rest) = do putStr (letter:"")
                                printLetters rest

main = printLetters

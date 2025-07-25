-- HC11T1: Greet the User

greetUser :: String -> String
greetUser name = "Hello, " ++ name ++ "!"

main :: IO ()
main = putStrLn (greetUser "Chimezie")



-- HC11T2: Count Characters in a Line

countCharacters :: String -> Int
countCharacters line = length line

main :: IO ()
main = print (countCharacters "Learning Haskell is fun!")




-- HC11T3: Double a Number

doubleNumber :: Int -> Int
doubleNumber x = x * 2

main :: IO ()
main = print (doubleNumber 7)




-- HC11T4: Concatenate Two Lines

concatLines :: String -> String -> String
concatLines line1 line2 = line1 ++ line2

main :: IO ()
main = putStrLn (concatLines "Functional " "Programming")
  
    
    
    
    --- HC11T5: Repeat Until "quit"

repeatUntilQuit :: [String] -> [String]
repeatUntilQuit = takeWhile (/= "quit")

main :: IO ()
main = print (repeatUntilQuit ["hello", "world", "test", "quit", "more"])

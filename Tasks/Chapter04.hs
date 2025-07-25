HC4T1 - Weather Report with Pattern Matching

weatherReport :: String -> String
weatherReport "sunny" = "It's a bright and beautiful day!"
weatherReport "rainy" = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport _ = "Weather unknown"

main = do
    print (weatherReport "sunny")
    print (weatherReport "rainy")
    print (weatherReport "cloudy")
    print (weatherReport "snowy")

    
HC4T2 - Day Type (Weekday or Weekend)

dayType :: String -> String
dayType "Saturday" = "It's a weekend!"
dayType "Sunday" = "It's a weekend!"
dayType day
    | day `elem` ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"] = "It's a weekday."
    | otherwise = "Invalid day"

main = do
    print (dayType "Saturday")
    print (dayType "Monday")
    print (dayType "Funday")
    
    
HC4T3 - Grade Comment with Pattern Matching

gradeComment :: Int -> String
gradeComment n
    | n >= 90 && n <= 100 = "Excellent!"
    | n >= 70 && n <= 89 = "Good job!"
    | n >= 50 && n <= 69 = "You passed."
    | n >= 0 && n <= 49 = "Better luck next time."
    | otherwise = "Invalid grade"

main = do
    print (gradeComment 95)
    print (gradeComment 75)
    print (gradeComment 55)
    print (gradeComment 30)
    print (gradeComment 120)

    
HC4T4 - Special Birthday with Pattern Matching

specialBirthday :: Int -> String
specialBirthday 1 = "First birthday!"
specialBirthday 18 = "Welcome to adulthood!"
specialBirthday 100 = "A century old!"
specialBirthday _ = "Just another birthday."

main = do
    print (specialBirthday 1)
    print (specialBirthday 18)
    print (specialBirthday 100)
    print (specialBirthday 25)
    

HC4T5 - Special Birthday with Custom Age Message

specialBirthday :: Int -> String
specialBirthday 1 = "First birthday!"
specialBirthday 18 = "Welcome to adulthood!"
specialBirthday 100 = "A century old!"
specialBirthday age = "You're " ++ show age ++ " years old today!"

main = do
    print (specialBirthday 1)
    print (specialBirthday 18)
    print (specialBirthday 100)
    print (specialBirthday 25)

    
HC4T6 - Identify List Contents

whatsInsideThisList :: [a] -> String
whatsInsideThisList [] = "The list is empty."
whatsInsideThisList [x] = "The list has one element."
whatsInsideThisList [x, y] = "The list has two elements."
whatsInsideThisList _ = "The list has many elements."

main = do
    print (whatsInsideThisList ([] :: [Int]))
    print (whatsInsideThisList [1])
    print (whatsInsideThisList [1, 2])
    print (whatsInsideThisList [1, 2, 3])

    
HC4T7 - Ignore Elements in List (Return First and Third)

firstAndThird :: [a] -> Maybe (a, a)
firstAndThird (x:_:z:_) = Just (x, z)
firstAndThird _ = Nothing

main = do
    print (firstAndThird [1, 2, 3, 4])  -- Just (1, 3)
    print (firstAndThird [1, 2])        -- Nothing
    print (firstAndThird [5, 6, 7])     -- Just (5, 7)

    
HC4T8 - Describe a Tuple

describeTuple :: (String, Int) -> String
describeTuple (name, age) = name ++ " is " ++ show age ++ " years old."

main = do
    print (describeTuple ("Alice", 25))
    print (describeTuple ("Bob", 40))







    


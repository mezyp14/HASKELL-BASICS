HC3T1 - Check if a Number is Positive, Negative, or Zero

checkNumber :: Int -> String
checkNumber n = if n > 0 then "Positive"
                else if n < 0 then "Negative"
                else "Zero"

main = do
    print (checkNumber 5)
    print (checkNumber (-3))
    print (checkNumber 0)

HC3T2 - Grade from Score Using Guards

grade :: Int -> String
grade s
  | s >= 90 = "A"
  | s >= 80 = "B"
  | s >= 70 = "C"
  | s >= 60 = "D"
  | otherwise = "F"

main = do
    print (grade 95)
    print (grade 72)
    print (grade 50)
    

HC3T3 - Convert RGB to Hex String Using Let

rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r, g, b) =
    let rHex = printf "%02X" r
        gHex = printf "%02X" g
        bHex = printf "%02X" b
    in rHex ++ gHex ++ bHex

main = do
    print (rgbToHex (255, 0, 127)) 
    print (rgbToHex (0, 255, 64))   


HC3T4 - Triangle Area Using Heron’s Formula


triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c =
    let s = (a + b + c) / 2
    in sqrt (s * (s - a) * (s - b) * (s - c))

main = do
    print (triangleArea 3 4 5)
    print (triangleArea 7 8 9)
    

 HC3T5 - Triangle Type Using Guards

triangleType :: Float -> Float -> Float -> String
triangleType a b c
  | a == b && b == c = "Equilateral"
  | a == b || b == c || a == c = "Isosceles"
  | otherwise = "Scalene"

main = do
    print (triangleType 3 3 3)
    print (triangleType 5 5 8)
    print (triangleType 6 7 8)


HC3T6 - Check Leap Year Using if-then-else

isLeapYear :: Int -> Bool
isLeapYear year =
    if year `mod` 400 == 0 then True
    else if year `mod` 100 == 0 then False
    else if year `mod` 4 == 0 then True
    else False

main = do
    print (isLeapYear 2000)
    print (isLeapYear 1900)
    print (isLeapYear 2024)



HC3T7 - Season from Month Using Guards

season :: Int -> String
season m
  | m == 12 || m == 1 || m == 2 = "Winter"
  | m >= 3 && m <= 5 = "Spring"
  | m >= 6 && m <= 8 = "Summer"
  | m >= 9 && m <= 11 = "Autumn"
  | otherwise = "Invalid month"

main = do
    print (season 3)
    print (season 7)
    print (season 11)



 HC3T8 - BMI Category Using where

bmiCategory :: Float -> Float -> String
bmiCategory weight height
  | bmi < 18.5 = "Underweight"
  | bmi < 25 = "Normal"
  | bmi < 30 = "Overweight"
  | bmi == 30 = "Obese"
  | bmi > 30 = "Obese"
  where bmi = weight / (height ^ 2)

main = do
    print (bmiCategory 70 1.75)
    print (bmiCategory 90 1.8)



HC3T9 - Max of Three Using let

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c =
    let maxAB = max a b
        maxABC = max maxAB c
    in maxABC

main = do
    print (maxOfThree 10 20 15)
    print (maxOfThree 5 25 10)


HC3T10 - Palindrome Check Using Recursion and Guards

isPalindrome :: String -> Bool
isPalindrome s
  | length s <= 1 = True
  | head s == last s = isPalindrome (init (tail s))
  | otherwise = False

main = do
    print (isPalindrome "racecar")
    print (isPalindrome "haskell")
    print (isPalindrome "madam")





    
    
    




    










    











    
    
















    

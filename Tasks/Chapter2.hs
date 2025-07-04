HC2T1 - Checking Types in GHCi

:t 42             -- Expected: 42 :: Num a => a (or defaulted to Int)
:t 3.14           -- Expected: 3.14 :: Fractional a => a (or Double)
:t "Haskell"      -- Expected: "Haskell" :: [Char]
:t 'Z'            -- Expected: 'Z' :: Char
:t True && False  -- Expected: True && False :: Bool

    
dummy file
main = do
    print 42
    print 3.14
    print "Haskell"
    print 'Z'
    print (True && False)

 
 HC2T2: Function Signatures
 
add :: Int -> Int -> Int
add x y = x + y

isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

concatStrings :: String -> String -> String
concatStrings a b = a ++ b

main = do
    putStrLn "HC2T2:"
    print (add 3 4)                   
    print (isEven 4)                 
    print (isEven 5)                 
    print (concatStrings "Hi, " "There!") -- "Hi, There!"
    

 HC2T3: Immutable Variables
 
myAge = 22 :: Int
piValue = 3.14159 :: Double
greeting = "Hello, Haskell!" :: String
isHaskellFun = True :: Bool

main = do
    putStrLn "HC2T3:"
    print myAge
    print piValue
    print greeting
    print isHaskellFun
    
    


 
 HC2T4: Notation Conversion

main = do
    putStrLn "HC2T4:"
  
    print ((+) 5 3)          
    print ((*) 10 4)         
    print ((&&) True False)  

    
    print (7 + 2)            
    print (6 * 5)            
    print (True && False)    
    

HC2T5: Functions

circleArea :: Float -> Float
circleArea r = 3.14159 * r * r

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree x y z = max x (max y z)

main = do
    putStrLn "HC2T5:"
    print (circleArea 5.0)          
    print (maxOfThree 4 8 2)        
    print (maxOfThree 10 15 12)     
    

HC2T6: Int vs Integer

smallNumber :: Int
smallNumber = 2^62

bigNumber :: Integer
bigNumber = 2^127

main = do
    putStrLn "HC2T6:"
    print smallNumber
    print bigNumber
    
    

HC2T7: Boolean Expressions

bool1 = True && True       
bool2 = False || False     
bool3 = not False          
bool4 = 5 > 10             

main = do
    putStrLn "HC2T7:"
    print bool1
    print bool2
    print bool3
    print bool4
    


    

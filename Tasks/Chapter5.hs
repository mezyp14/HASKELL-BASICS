HC5T1 - Apply Function Three Times

applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x = f (f (f x))

main = do
    print (applyThrice (+1) 5)    -- Output: 8
    print (applyThrice (*2) 1)    -- Output: 8


HC5T2 - Filtering Odd Numbers

oddNumbers :: [Int]
oddNumbers = filter odd [1..30]

main = do
    print oddNumbers


HC5T3 - Check for Words Starting with Uppercase

hasUppercaseWord :: [String] -> Bool
hasUppercaseWord = any (\word -> not (null word) && isUpper (head word))

main = do
    print (hasUppercaseWord ["hello", "World", "apple"])  
    print (hasUppercaseWord ["good", "morning"])    

    
HC5T4 - Rewrite with Lambda

biggerThan10 = \x -> x > 10

main = do
    print (biggerThan10 8)   
    print (biggerThan10 15)  
    

HC5T5 - Partial Application

multiplyByFive :: Int -> Int
multiplyByFive = (*5)

main = do
    print (multiplyByFive 6)   -- 30
    print (multiplyByFive 10)  -- 50

    
HC5T6 - Function Composition

squaredEvens :: [Int] -> [Int]
squaredEvens = filter even . map (^2)

main = do
    print (squaredEvens [1..10])  -- [4,16,36,64,100]
    

HC5T7 - Using $ Operator

result :: Int
result = sum $ map (*2) $ filter (>3) [1..10]

main = do
    print result  --92
    
    
HC5T8 - Point-Free Style

addFive :: Int -> Int
addFive = (+5)

main = do
    print (addFive 10)  -- 15


HC5T9 - Transform List with Function Applied Twice

transformList :: (a -> a) -> [a] -> [a]
transformList f = map (f . f)

main = do
    print (transformList (+1) [1, 2, 3])  -- [3,4,5]
    print (transformList (*2) [1, 2, 3])  -- [4,8,12]

    
HC5T10 - Check if Any Square > 50

hasSquareGreaterThan50 :: [Int] -> Bool
hasSquareGreaterThan50 = any (>50) . map (^2)

main = do
    print (hasSquareGreaterThan50 [1, 2, 3, 10])  -- True (100)
    print (hasSquareGreaterThan50 [1, 2, 3, 6])   -- False (max 36)
    








    
    

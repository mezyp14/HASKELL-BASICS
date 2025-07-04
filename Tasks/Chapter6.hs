HC6T1: Recursive Factorial

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main = do
    print (factorial 5)  

    
HC6T2: Recursive Fibonacci

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main = do
    print (fibonacci 0)  
    print (fibonacci 1)  
    print (fibonacci 6) 


HC6T3: Sum Using foldr

sumList :: [Int] -> Int
sumList = foldr (+) 0

main = do
    print (sumList [1, 2, 3, 4])  

    
HC6T4: Product Using foldl

productList :: [Int] -> Int
productList = foldl (*) 1

main = do
    print (productList [1, 2, 3, 4])  
    

HC6T5: Reverse List Using Recursion

reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

main = do
    print (reverseList [1, 2, 3, 4])  

    
HC6T6: Check If Element Exists in List

elementExists :: Eq a => a -> [a] -> Bool
elementExists _ [] = False
elementExists x (y:ys)
    | x == y    = True
    | otherwise = elementExists x ys

main = do
    print (elementExists 3 [1, 2, 3, 4])  
    print (elementExists 5 [1, 2, 3, 4])  

  
HC6T7: Length of List Using Recursion
haskell
Copy
Edit
listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength xs

main = do
    print (listLength [10, 20, 30, 40])  

    
HC6T8: Filter Even Numbers

filterEvens :: [Int] -> [Int]
filterEvens [] = []
filterEvens (x:xs)
    | even x    = x : filterEvens xs
    | otherwise = filterEvens xs

main = do
    print (filterEvens [1..10])  

HC6T9: Custom map Implementation

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = f x : myMap f xs

main = do
    print (myMap (+1) [1, 2, 3])  
    print (myMap (*2) [1, 2, 3])  

    
HC6T10: Get Digits from Number (Recursively)

digits :: Int -> [Int]
digits n
    | n < 10    = [n]
    | otherwise = digits (n `div` 10) ++ [n `mod` 10]

main = do
    print (digits 12345)  


    

    

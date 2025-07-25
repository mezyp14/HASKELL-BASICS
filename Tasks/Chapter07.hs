HC7T1: Eq Instance for Color

data Color = Red | Green | Blue

instance Eq Color where
    Red   == Red   = True
    Green == Green = True
    Blue  == Blue  = True
    _     == _     = False

main = do
    print (Red == Red)      
    print (Red == Blue)     

    
HC7T2: Ord Instance for Color
haskell
Copy
Edit
data Color = Red | Green | Blue deriving (Eq, Show)

instance Ord Color where
    compare Red Green = LT
    compare Green Blue = LT
    compare Red Blue = LT
    compare a b
        | a == b    = EQ
        | otherwise = GT

main = do
    print (Red < Green)   
    print (Blue > Green)  
    

HC7T3: Function with Eq and Ord Constraints

compareValues :: (Eq a, Ord a) => a -> a -> a
compareValues a b
    | a >= b    = a
    | otherwise = b

main = do
    print (compareValues 5 10)   
    print (compareValues 'z' 'a') 

    
HC7T4: Show and Read for Shape

data Shape = Circle Double | Rectangle Double Double
    deriving (Show, Read)

main = do
    let s1 = Circle 5.0
    let s2 = Rectangle 3.0 4.0
    print s1
    print s2
    print (read "Circle 10.5" :: Shape)


HC7T5: squareArea with Num Constraint

squareArea :: Num a => a -> a
squareArea side = side * side

main = do
    print (squareArea 5)     
    print (squareArea 2.5)   

    
HC7T6: circleCircumference with Integral and Floating

circleCircumference :: (Real a, Floating b) => a -> b
circleCircumference r = 2 * pi * realToFrac r

main = do
    print (circleCircumference 5)       
    print (circleCircumference (7 :: Integer)


HC7T7: nextColor with Bounded and Enum

data Color = Red | Green | Blue
    deriving (Show, Eq, Enum, Bounded)

nextColor :: Color -> Color
nextColor c
    | c == maxBound = minBound
    | otherwise = succ c

main = do
    print (nextColor Red)     
    print (nextColor Blue)   

    
HC7T8: parseShape with Read

data Shape = Circle Double | Rectangle Double Double
    deriving (Show, Read)

parseShape :: String -> Maybe Shape
parseShape s = case reads s of
    [(shape, "")] -> Just shape
    _             -> Nothing

main = do
    print (parseShape "Circle 5.0")               
    print (parseShape "Rectangle 3.0 4.0")        
    print (parseShape "Triangle 3.0 4.0")      


HC7T9: Describable Type Class with Bool and Shape Instances

class Describable a where
    describe :: a -> String

instance Describable Bool where
    describe True = "This is true"
    describe False = "This is false"

data Shape = Circle Double | Rectangle Double Double
    deriving (Show, Read)

instance Describable Shape where
    describe (Circle r) = "A circle with radius " ++ show r
    describe (Rectangle w h) = "A rectangle " ++ show w ++ " by " ++ show h

main = do
    print (describe True)
    print (describe (Circle 5))


HC7T10: describeAndCompare with Constraints

class Describable a where
    describe :: a -> String

instance Describable Bool where
    describe True = "This is true"
    describe False = "This is false"

data Shape = Circle Double | Rectangle Double Double
    deriving (Show, Read)

instance Describable Shape where
    describe (Circle r) = "A circle with radius " ++ show r
    describe (Rectangle w h) = "A rectangle " ++ show w ++ " by " ++ show h

instance Eq Shape where
    (Circle r1) == (Circle r2) = r1 == r2
    (Rectangle w1 h1) == (Rectangle w2 h2) = w1 == w2 && h1 == h2
    _ == _ = False

instance Ord Shape where
    compare (Circle r1) (Circle r2) = compare r1 r2
    compare (Rectangle w1 h1) (Rectangle w2 h2) = compare (w1*h1) (w2*h2)
    compare (Circle r) (Rectangle w h) = compare (pi * r * r) (w * h)
    compare (Rectangle w h) (Circle r) = compare (w * h) (pi * r * r)

describeAndCompare :: (Describable a, Ord a) => a -> a -> String
describeAndCompare a b
    | a >= b    = describe a
    | otherwise = describe b

main = do
    print (describeAndCompare (Circle 4) (Rectangle 3 3))
    print (describeAndCompare True False)                 
    
    

    


    
    

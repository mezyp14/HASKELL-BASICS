-- HC9T1: Define a Parametric Type Synonym

type Entity a = (String, a)

data Person = Person { name :: String, age :: Int } deriving Show
data Company = Company { companyName :: String } deriving Show

main :: IO ()
main = do
    let personEntity :: Entity Person
        personEntity = ("123 Main St", Person "Alice" 30)

        companyEntity :: Entity Company
        companyEntity = ("456 Business Rd", Company "TechCorp")

    putStrLn "Person Entity:"
    print personEntity

    putStrLn "\nCompany Entity:"
    print companyEntity



-- HC9T2: Implement a Parametric Data Type

data Box a = Empty | Has a deriving Show

-- HC9T3: Function to Add Values in a Box

addBox :: Num a => Box a -> Box a -> Box a
addBox (Has x) (Has y) = Has (x + y)
addBox Empty b = b
addBox a Empty = a

main :: IO ()
main = do
    let box1 = Has 10
        box2 = Has 20
        box3 = Empty

    print $ addBox box1 box2  -- Has 30
    print $ addBox box1 box3  -- Has 10
    print $ addBox box3 box3  -- Empty




-- HC9T3: Function to Add Values in a Box

data Box a = Empty | Has a deriving Show

addN :: Num a => a -> Box a -> Box a
addN n (Has x) = Has (n + x)
addN _ Empty   = Empty

main :: IO ()
main = do
    let box1 = Has 15
        box2 = Empty

    print $ addN 5 box1   -- Has 20
    print $ addN 10 box2  -- Empty



-- HC9T4: Extract a Value from a Box

data Box a = Empty | Has a deriving Show

extract :: a -> Box a -> a
extract _ (Has x) = x
extract def Empty = def

main :: IO ()
main = do
    let box1 = Has "Hello"
        box2 = Empty

    print $ extract "Default" box1  -- "Hello"
    print $ extract "Default" box2  -- "Default"




-- HC9T5: Parametric Data Type with Record Syntax

data Shape a
    = Circle { color :: a, radius :: Double }
    | Rectangle { color :: a, width :: Double, height :: Double }
    deriving Show

main :: IO ()
main = do
    let redCircle = Circle { color = "Red", radius = 5.0 }
        blueRectangle = Rectangle { color = "Blue", width = 4.0, height = 6.0 }

    print redCircle
    print blueRectangle

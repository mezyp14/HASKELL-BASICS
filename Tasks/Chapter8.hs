type Address = String
type Value = Int

generateTx :: Address -> Address -> Value -> String
generateTx from to value = "Transaction from " ++ from ++ " to " ++ to ++ " of value " ++ show value

main :: IO ()
main = do
    let fromAddress = "0xABC123"
    let toAddress = "0xDEF456"
    let amount = 100
    let tx = generateTx fromAddress toAddress amount
    putStrLn tx



type Name = String
type Age = Int

greet :: Name -> Age -> String
greet name age = "Hello, " ++ name ++ ". You are " ++ show age ++ " years old."

main :: IO ()
main = do
    let personName = "Alice"
    let personAge = 25
    putStrLn (greet personName personAge)



data Shape = Circle Float | Rectangle Float Float

area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rectangle w h) = w * h

main :: IO ()
main = do
    let circle = Circle 5
    let rectangle = Rectangle 10 5
    putStrLn ("Area of circle: " ++ show (area circle))
    putStrLn ("Area of rectangle: " ++ show (area rectangle))





data Book = Book { title :: String, author :: String, year :: Int } deriving (Show)

main :: IO ()
main = do
    let myBook = Book 
            { title = "1984"
            , author = "George Orwell"
            , year = 1949
            }
    putStrLn "Here is the book info:"
    print myBook




data Person = Person String Int Bool deriving Show

main :: IO ()
main = do
    let person1 = Person "Alice" 30 True
    let person2 = Person "Bob" 25 False

    putStrLn "Person 1:"
    print person1

    putStrLn "Person 2:"
    print person2






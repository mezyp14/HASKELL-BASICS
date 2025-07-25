-- HC10T1: ShowSimple Type Class

data PaymentMethod = Cash | Card | Transfer

class ShowSimple a where
    showSimple :: a -> String

instance ShowSimple PaymentMethod where
    showSimple Cash     = "Cash"
    showSimple Card     = "Card"
    showSimple Transfer = "Transfer"

main :: IO ()
main = do
    print $ showSimple Cash
    print $ showSimple Card
    print $ showSimple Transfer



    -- HC10T2: Summable Type Class

class Summable a where
    sumUp :: [a] -> a

instance Summable Int where
    sumUp = sum

main :: IO ()
main = do
    print $ sumUp [1, 2, 3, 4, 5]




-- HC10T3: Comparable Type Class

data Blockchain = Bitcoin | Ethereum | Solana deriving (Eq, Show)

class Comparable a where
    compareWith :: a -> a -> Ordering

instance Comparable Blockchain where
    compareWith Bitcoin Bitcoin   = EQ
    compareWith Bitcoin _         = LT
    compareWith Ethereum Bitcoin  = GT
    compareWith Ethereum Ethereum = EQ
    compareWith Ethereum _        = LT
    compareWith Solana Solana     = EQ
    compareWith Solana _          = GT

main :: IO ()
main = do
    print $ compareWith Bitcoin Ethereum
    print $ compareWith Ethereum Solana
    print $ compareWith Solana Bitcoin





-- HC10T4: Eq Instance for Box

data Box a = Empty | Full a deriving Show

instance Eq a => Eq (Box a) where
    Empty == Empty       = True
    Full x == Full y     = x == y
    _ == _               = False

main :: IO ()
main = do
    print $ Full 5 == Full 5
    print $ Full 5 == Full 6
    print $ Empty == Empty
    print $ Full 5 == Empty



-- HC10T5: ShowDetailed Type Class

data User = User { name :: String, age :: Int }

class ShowDetailed a where
    showDetailed :: a -> String

instance ShowDetailed User where
    showDetailed (User n a) = "Name: " ++ n ++ ", Age: " ++ show a

main :: IO ()
main = do
    let user1 = User "Alice" 30
    let user2 = User "Bob" 25
    putStrLn $ showDetailed user1
    putStrLn $ showDetailed user2







    










    







    

    

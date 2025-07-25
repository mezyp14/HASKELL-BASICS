HC1T1 - Function Composition
double x = x * 2
increment x = x + 1
doubleThenIncrement x = increment (double x)

main = do
    print (doubleThenIncrement 5)  
    
    
HC1T2 - Pure Function Example (Circle Area)
circleArea r = 3.14159 * r * r

main = do
    print (circleArea 3)  
    

HC1T3: Check Greater Than 18
greaterThan18 x = x > 18

main = do
    putStrLn "HC1T3: greaterThan18"
    print (greaterThan18 20)  
    print (greaterThan18 15)  
    

 HC1T4: Get Top 3 Players

extractPlayers players = map fst players

sortByScore players = reverse (sortBy compareScore players)
  where compareScore (_, s1) (_, s2) = compare s1 s2

topThree players = take 3 players

getTopThreePlayers players = extractPlayers (topThree (sortByScore players))

main = do
    putStrLn "HC1T4: getTopThreePlayers"
    let players = [("Ada", 10), ("Ben", 25), ("Cee", 15), ("Dan", 30)]
    print (getTopThreePlayers players)  -- Output: ["Dan", "Ben", "Cee"]
    

HC1T5: Laziness - Infinite List

infiniteNumbers = [1..]

takeN n = take n infiniteNumbers

main = do
    putStrLn "HC1T5: takeN from infiniteNumbers"
    print (takeN 5)  -- Output: [1,2,3,4,5]


 HC1T6: Add Two Numbers
 
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

main = do
    putStrLn "HC1T6: addNumbers"
    print (addNumbers 3 4)  -- Output: 7
    

HC1T7: Convert Fahrenheit to Celsius

fToC f = (f - 32) * 5 / 9

main = do
    putStrLn "HC1T7: fToC"
    print (fToC 98.6)  -- Output: 37.0


HC1T8: applyTwice

applyTwice f x = f (f x)

main = do
    putStrLn "HC1T8: applyTwice"
    print (applyTwice (+1) 5)   
    print (applyTwice (*2) 3)  



    
    










    

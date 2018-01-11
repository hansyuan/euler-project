import Debug.Trace
import Data.Set 
debug = flip trace

-- Generate the number of each prime required to build the required indivisible numbers

breakDownIntoPrimes target = 0
    

isPrime :: Int -> Bool
isPrime num = 
    all (==False) $ tail $ init [(num `mod` x == 0) | x <- [1..num]]


allFactors target = do 
    let range = [1..target] 
    let returnPairs = concat [ [x,y] |  x <- range, 
                                        y <- [target `div` x], 
                                        target `mod` x == 0, 
                                        x <= y, 
                                        x > 1 ] 

    returnPairs

allPrimes target = [allFactors x | x <- [2..target] ]

-- For each list in the list, determine hashmap






evenDiv :: Int -> Int -> Int -> Bool
evenDiv target min max =   all (True==) [target `mod` x == 0 | x <- [min..max]]

find :: Int -> Int -> Int 
find currInt max = do
    let result = evenDiv currInt 3 max  `debug` (show currInt)
    case result of 
        True -> currInt
        False -> find (currInt + 20) max

evenDivides bound = find 20 bound

main = print $ evenDivides 5
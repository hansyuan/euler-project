import Debug.Trace
import Control.Exception

debug = flip trace


findPrime :: Int -> Int -> Int
findPrime target try 
    -- try starts a 2 and ends at target 
    | try >= 2 && try <= target = 
        if target `mod` try == 0
            then try
            else findPrime target (try + 1)
    | otherwise = -1 

    

pF :: Int -> Int -> Int
pF target foundSoFar 
    -- Take the first mod result 0 and add to list
    -- Then divide and recurse
    | nextPrime == -1     = 
        foundSoFar `debug` "Done."
         
    | nextPrime > -1      = 
        if nextPrime > foundSoFar 
            then pF (target `div` nextPrime) (nextPrime) `debug` "nextPrime"
            else pF (target `div` nextPrime) (foundSoFar) `debug` "foundSoFar"
        
    where nextPrime = findPrime target 2
    
primeFactor :: Int -> Int
primeFactor x = (pF x 0) `debug` "Hey"

target = 600851475143
-- target = 1923
result = primeFactor target `debug` "Hi"

main = do print $ result `debug` "Hello there"
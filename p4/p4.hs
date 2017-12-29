import Debug.Trace
debug = flip trace

-- From x <- [100..999] * [100..999] determine the single largest palindromic product. 

isPalindrome :: [Char] -> Bool 
isPalindrome onion 
    | null onion = True
    | length onion == 1 = True 
    | length onion > 1 = 
        if head onion == last onion
            then isPalindrome $ init $ tail onion  
            else False

-- list comprehension instead of iterative function. pretty.
pals = [x * y | x <- [100..999], y <- [100..999], isPalindrome $ show $x*y]


main = do print $ maximum pals `debug` "Hello there"
-- Generate the list through recursion

bound = 4000000

start = [1,2]

fib l x1 x2
    | x3 < bound = fib (l ++ [x3]) x2 x3 
    | x3 >= bound = l 
    where x3 = x1 + x2

underFourMil = fib start 1 2
evenFibs = sum [x | x <- underFourMil, even x ]
main = do print $ evenFibs

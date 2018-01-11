import Data.List
threes = [3,6..1000] 
fives = [5,10..999]
main = do print $ sum (union threes fives)
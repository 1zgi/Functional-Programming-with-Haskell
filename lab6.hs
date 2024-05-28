-- Function to return the list of numbers that are divisible by 3 using a list comprehension
div_by_3 :: [Int] -> [Int]
div_by_3 lst = [x | x <- lst, x `mod` 3 == 0]

-- Function to return the list of numbers that are divisible by 2 using recursion
div_by_2 :: [Int] -> [Int]
div_by_2 [] = []
div_by_2 (x:xs)
    | x `mod` 2 == 0 = x : div_by_2 xs
    | otherwise      = div_by_2 xs

-- Function to count how many times an element appears in a list
count :: Eq a => a -> [a] -> Int
count _ [] = 0
count e (x:xs)
    | e == x    = 1 + count e xs
    | otherwise = count e xs

-- Function to return a list where all values are tripled using map
triple :: [Int] -> [Int]
triple lst = map (* 3) lst

-- Function to sort three numbers using guards
sort :: Ord a => a -> a -> a -> [a]
sort a b c
    | a <= b && b <= c = [a, b, c]
    | a <= c && c <= b = [a, c, b]
    | b <= a && a <= c = [b, a, c]
    | b <= c && c <= a = [b, c, a]
    | c <= a && a <= b = [c, a, b]
    | c <= b && b <= a = [c, b, a]

-- Function to return a slice of the list from position n to m (1-based index)
from_to :: Int -> Int -> [a] -> [a]
from_to n m lst = take (m - n + 1) (drop (n - 1) lst)

-- Function to return the nth element of a list recursively (1-based index)
nth_element :: Int -> [a] -> a
nth_element 1 (x:_)  = x
nth_element n (_:xs) = nth_element (n - 1) xs
nth_element _ []     = error "Index out of bounds"

-- Function to return the mth element of a list using head and drop (1-based index)
mth_element :: Int -> [a] -> a
mth_element m lst = head (drop (m - 1) lst)

-- Function to return the sum of elements in the same position of two lists
add_lists :: [Int] -> [Int] -> [Int]
add_lists [] [] = []
add_lists (x:xs) [] = x : add_lists xs []
add_lists [] (y:ys) = y : add_lists [] ys
add_lists (x:xs) (y:ys) = (x + y) : add_lists xs ys

-- Function to return a letter grade based on a numeric grade using guards
classify :: Int -> Char
classify n
    | n >= 90   = 'A'
    | n >= 70   = 'B'
    | n >= 50   = 'C'
    | otherwise = 'D'

-- Main function to test the implemented functions
main :: IO ()
main = do
    putStrLn "Testing div_by_3:"
    print $ div_by_3 [3, 5, 4, 2, 8, 15]  -- Expected: [3, 15]
    print $ div_by_3 [9, 18, 21, 22]      -- Expected: [9, 18, 21]
    
    putStrLn "\nTesting div_by_2:"
    print $ div_by_2 [3, 5, 4, 2, 8, 15]  -- Expected: [4, 2, 8]
    print $ div_by_2 [10, 15, 20, 25]     -- Expected: [10, 20]
    
    putStrLn "\nTesting count:"
    print $ count 'b' ['a', 'b', 'c', 'b', 's']  -- Expected: 2
    print $ count 1 [1, 2, 3, 1, 4, 1, 5]       -- Expected: 3
    
    putStrLn "\nTesting triple:"
    print $ triple [2, 4, 5, 1]  -- Expected: [6, 12, 15, 3]
    print $ triple [0, -1, -2, 3]  -- Expected: [0, -3, -6, 9]
    
    putStrLn "\nTesting sort:"
    print $ sort 3 4 1  -- Expected: [1, 3, 4]
    print $ sort 5 2 8  -- Expected: [2, 5, 8]
    
    putStrLn "\nTesting from_to:"
    print $ from_to 3 5 [4, 3, 6, 5, 8, 7, 2, 0]  -- Expected: [6, 5, 8]
    print $ from_to 1 3 [10, 20, 30, 40, 50]      -- Expected: [10, 20, 30]
    
    putStrLn "\nTesting nth_element:"
    print $ nth_element 3 [2, 5, 4, 6, 8]  -- Expected: 4
    print $ nth_element 1 [9, 8, 7, 6, 5]  -- Expected: 9
    
    putStrLn "\nTesting mth_element:"
    print $ mth_element 3 [2, 5, 4, 6, 8]  -- Expected: 4
    print $ mth_element 2 [9, 8, 7, 6, 5]  -- Expected: 8
    
    putStrLn "\nTesting add_lists:"
    print $ add_lists [3, 4, 5] [10, 20, 30]  -- Expected: [13, 24, 35]
    print $ add_lists [3, 4, 5] [10, 20, 30, 88, 42]  -- Expected: [13, 24, 35, 88, 42]
    print $ add_lists [3, 4, 5] [10]  -- Expected: [13, 4, 5]
    print $ add_lists [] [1, 2, 3]  -- Expected: [1, 2, 3]
    
    putStrLn "\nTesting classify:"
    print $ classify 87  -- Expected: 'B'
    print $ classify 50  -- Expected: 'C'
    print $ classify 92  -- Expected: 'A'
    print $ classify 40  -- Expected: 'D'

# Functional-Programming-with-Haskell

1. div_by_3some_list: returns the list of numbers that are divisible by
For example, div_by_3[3, 5, 4 ,2, 8, 15] should return the list [3,15].

3. div_by_2some_list: returns the list of numbers that are divisible by
For example, div_by_2[3, 5, 4 ,2, 8, 15] should return the list [4,2,8].

4. count elem a_list: returns how many elems are in a_list.
For example, count 'b' ['a', 'b','c', 'b', 's'] should return 2.

5. triplelist: Return a list where all values in the list are triple the values in the original 
list. For example, triple [2,4,5,1] should return [6,12,15,3].

6. sort n1 n2 n3: returns a list containing the three numbers n1, n2 and n3 such that the
list is sorted. E.g. sort 3 4 1 should return [1,3,4].

7. from_to n m list: returns a slice of the list from position n to position m. E.g. 
from_to3 5 [4,3,6,5,8,7,2,0] should return [6,5,8]. Note that we start counting at 1, not 0.

8. nth_element n list: returns the nth element of list. Counting starts at 1. For example,
nth_element 3 [2,5,4,6,8] should return 4.

9. mth_element m list: returns the mth element of list. Counting starts at 1. For 
example, mth_element 3 [2,5,4,6,8] should return 4.

10. add_lists list1 list2: returns the sum of the elements in the same position in each list as 
anew list. If one list is shorter than the other, assume that the shorter list has zero’s in 
the “missing places”. For example,

    • add_lists [3,4,5] [10,20,30] should return [13,24,35].

    • add_lists [3,4,5] [10,20,30, 88, 42] should return [13,24,35,88,42].

    • add_lists [3,4,5] [10] should return [13,4,5]

11. classify n: returns a letter grade based upon a numeric grade, according to the 
following schema:

    • if n ≥ 90, return ‘A'

    • if 89 ≤ n ≤ 70, return 'B'

    • if 69 ≤ n ≤ 50, return ‘C'

    • otherwise, return 'D'.

For example, classify 87 should return 'B'

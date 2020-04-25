# Multiply Lists
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# Examples:

=begin
Input: two array arguments with list of numbers
Output: new array with product of each corresponding index
Rules: will contain same number of elements
Problem: multiply numbers at each index from two different arrays and collect answers in a new array

DS: array

Algo:
- define a method multiply_list with two parameters, ary1 and ary2
- initialize a new variable called results, set to empty array
- iterate over first array using each with index. multiply el with ary2[index] and append this to the results array
- return results array

=end

def multiply_list(ary1, ary2)
  results = []
  ary1.each_with_index {|el, i| results << (el * ary2[i])}
  results
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
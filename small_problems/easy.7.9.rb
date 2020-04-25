# Multiply All Pairs
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Examples:

=begin
Input: two arrays
Output: new array with all possible products, results sorted
Rules: neither argument is empty. 
Problem: multiply each element of first array with each element of second array, store and sort results into new array

DS: array

Algo:
define method multiply_all_pairs, params ary1, ary2
init results empty array
iterate over each element of ary1
  - using incrementing index values of ary2, mult. ary1 element times the ary2[indx] and add the values to the results array
    - for incrementing index, use upto method, 0.upto(ary2.size - 1)
return sorted values of results array
=end

def multiply_all_pairs(ary1, ary2)
  results = []
  ary1.each do |el|
    0.upto(ary2.size - 1) {|i| results << (ary2[i] * el)}
  end
  results.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
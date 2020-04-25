# Counting Up
# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

# Examples:

=begin
Input: integer
Output: array of integers (range between 1 and n)
Rules: always valid n, always greater than 0
Problem: finding all numbers between 1 and the given n and saving into an array in order

DS: array, integers

Algo:
- def method, one param, n
- initialize empty results
- call the upto method on 1 and pass in the n, add each num to the results array
- return results
=end

def sequence(n)
  results = []
  1.upto(n) {|num| results << num}
  results
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
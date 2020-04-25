# Grocery List
# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Example:

=begin
Input: nested array
Output: array of fruit only
Rules:
Problem: iterate over each nested array and add item at index 0 to results array subary[1] number of times

DS: array

Algo:
iterate over subarrays with each, add element into array index amount of times
=end

def buy_fruit(ary)
  ary.each_with_object([]) do |subarray, result|
    subarray[1].times {result << subarray[0]}
  end
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==  ["apples", "apples", "apples", "orange", "bananas","bananas"]
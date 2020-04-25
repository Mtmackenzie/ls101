# Sequence Count
# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# Examples:

=begin
Input: two integers, count and first_num
Output: array with first_num multiplied count number of times
Rules: if count is 0, return empty list
Problem: multiply first_num by 1 up to count and return each result in an array

DS: array

Algo:
def method sequence that takes two params, count and first_num

if count is equal to 0, return empty array

call upto on 1 and pass in count as argument with n as param
  - multiply n times the first_num and add to results array
return results array

create range of numbers, convert to array, call each with object, object is empty array, add iterate over number range to multiply first_num with range and add to array object
# results = []
  # 1.upto(count) {|n| results << n * first_num}
  # results
=end

def sequence(count, first_num)
  (1..count).to_a.each_with_object([]) {|num, ary| ary << num * first_num}
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
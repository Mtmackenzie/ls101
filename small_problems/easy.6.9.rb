# Does My List Include This?
# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.
=begin
Input: array, search value
Output: boolean
Rules: cannot use Array#include? value could be nil, array could be empty, array could contain nil

DS: array

Algo:
def include? array, value
index = 0
call loop, block
  break if the index == array.size
  return true if value == array[index]
  index += 0
end

false
=end

def include?(array, value)
  index = 0
  loop do
    break if index == array.size
    return true if value == array[index]
    index += 1
  end
  false
end

def include?(array, value)
  array.each_with_index {|el, i| return true if array.index(el)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
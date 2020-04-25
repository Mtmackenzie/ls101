# Running Totals
# Write a method that takes an Array of numbers, and returns an Array 
# with the same number of elements, and each element has the running 
# total from the original Array.

# Examples:

=begin
input: array, ouput: array with running total (same amount of elements)

DS: array, integer
rules: empty arrays are possible

Algo:

define method parameter: array

return array if array[0] == nil
sum = 0
iterate using map num
sum += num
end
=end

def running_total(array)
  return array if array[0] == nil
  sum = 0
  array.map { |num| sum += num}
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
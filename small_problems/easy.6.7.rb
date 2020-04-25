# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Examples:

=begin
Input: array
Output: two arrays (pair of nested arrays) containing array argument split evenly or with extra element in first half array
Rules: it matters if it's even or odd

DS: array

Algo:
partition?
slice, index count
call partition on ary and in block, param el
ary.index(el) < ((ary.size)/2.0).round

=end

def halvsies(ary)
  ary.partition {|el| ary.index(el) < ((ary.size)/2.0)}
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
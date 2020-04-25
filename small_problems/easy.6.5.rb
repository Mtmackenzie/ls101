# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# Examples:

=begin
Input: array
Output: new array with elements in reverse order
Rules: don't modify original list, can't use reverse or previous method

DS: array

Algo:
define a method called reverse that takes one parameter, ary
init lv called new_ary, []
iterate over ary using each
new_ary.unshift(el)

return new_ary



 inject or each_with_object.
=end

# def reverse(ary)
#   # new_ary = []
#   ary.each_with_object([]) {|el, a| a.unshift(el)}
# end

def reverse(ary)
  new_ary = []
  ary.inject {|_, el| new_ary.unshift(el)}
  
end

# p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
# p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) #== ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true
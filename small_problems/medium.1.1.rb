# Write a method that rotates an array by moving the first element 
# to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Example:


#  def method input array. new array. x = shift. add x to the end of the new array, shovel. return new array.
# new array. 

array = [1, 2, 3]
string = "hello"
integer = 1234

# def rotate_array(ary)
#   new_ary = []
#   x = ary[0]
#   new_ary << ary
#   new_ary << x
#   new_ary = new_ary.flatten
#   new_ary.delete_at(0)
#   new_ary
# end

def create_array(arg)
  if arg.to_i.to_s == arg
    arg.to_i.digits.reverse
  else
    arg.chars
  end
end

p create_array(integer)

# def rotate_array(ary)
#   new_ary = Array.new(ary)
#   new_ary << new_ary.delete_at(0)
# end

# def rotate(arg)
#   new_string = rotate_array(arg.to_s.chars).join('')
#   if arg.to_i.to_s == arg
#     new_string.to_i
#   end
#   new_string
# end
  

# p rotate_array(array)
# p rotate(string)
# p rotate(integer)
# p array

# x = array.shift
# array << x
# p array

# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true
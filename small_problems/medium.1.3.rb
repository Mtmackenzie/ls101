# If you take a number like 735291, and rotate it to the left, 
# you get 352917. If you now keep the first digit fixed in place, 
# and rotate the remaining digits, you get 329175. Keep the first 
# 2 digits fixed in place and rotate again to 321759. Keep the first 
# 3 digits fixed in place and rotate again to get 321597. Finally, 
# keep the first 4 digits fixed in place and rotate the final 2 digits 
# to get 321579. The resulting number is called the maximum rotation 
# of the original number.

# Write a method that takes an integer as argument, and returns 
# the maximum rotation of that argument. You can (and probably should) 
# use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# Example:

# take integer. use rotate_rightmost_digits method, integer n.
# count number of digits. integer.to_s.chars.size
# n = size
# return rotate save new_integer
# loop
# new_integer n -1
# break when n == 0
# new_integer

def rotate_rightmost_digits(integer, n)
  ary = integer.to_s.chars
  new_ary = Array.new(ary) # avoid mutating the original argument
  new_ary << new_ary.delete_at(-n)
  new_ary.join('')
end

def max_rotation(integer)
  n = integer.to_s.size
  new_integer = integer
  loop do
    new_integer = rotate_rightmost_digits(new_integer, n)
    break if n == 1
    n -= 1
  end
  new_integer
end

p max_rotation(10045)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
# Write a method that can rotate the last n digits of a number. For example:

# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219   takes second to last digit and rotates to end
# rotate_rightmost_digits(735291, 3) == 735912   takes third to last digit and rotates to end
# rotate_rightmost_digits(735291, 4) == 732915   takes fourth to last digit and rotates to end
# rotate_rightmost_digits(735291, 5) == 752913   takes fifth to last digit and rotates to end
# rotate_rightmost_digits(735291, 6) == 352917
# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

#  def given (integer, n) . -n. n is greater than the size of the number?

# def rotate_array(ary)
#   new_ary = Array.new(ary)
#   new_ary << new_ary.pop
# end

# def rotate_rightmost_digits(integer, n)
#   ary = integer.digits.reverse
#   new_ary = Array.new(ary)
#   counter = 1
#   reversed_digits = []
#   loop do
#     reversed_digits << new_ary.delete_at(-1)
#     break if counter == n
#     counter += 1
#   end
#   p (new_ary + reversed_digits).join('').to_i
# end
# def method(integer, n)
# split apart the integer into an array
# use old rotate method, delete_at(-n) appending to the remaining array
# join('').to_i

def rotate_rightmost_digits(integer, n)
  ary = integer.digits.reverse
  new_ary = Array.new(ary) # avoid mutating the original argument
  new_ary << new_ary.delete_at(-n)
  new_ary.join('').to_i
end

integer = 12345

p rotate_rightmost_digits(integer, 4)
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
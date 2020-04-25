# Convert a Signed Number to a String!
# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

# Examples

def signed_integer_to_string(integer)
  if integer > 0
    '+' + integer.digits.reverse.join
  elsif integer < 0
    '-' + (-integer).digits.reverse.join
  else
    '0'
  end
  # p integer.digits.reverse
  # case integer[0]
  # when 0 then integer.join
  # when 
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
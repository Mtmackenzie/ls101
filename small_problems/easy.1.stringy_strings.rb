# Write a method that takes one argument, a positive integer, and returns a 
# string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

def stringy(number)
  binary = "10"
  odd = "1"
  x = number / 2
  if number.even?
    puts binary * x
  else
    puts binary * x + odd
  end
end

puts stringy(3)
# Write a method that takes one argument, a positive integer, 
# and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without 
# any basic looping constructs (while, until, loop, and each).

def sum(number)
  length = number.to_s.length
  array = number.to_s.split('').first(length)
  array.map { |x| x.to_i }.sum
end

def other_sum(number)
  number.digits.sum
end 

puts other_sum(23)

p sum(123_456_789)
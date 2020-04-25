# Write a method that takes one argument, a positive integer, and returns a list 
# of the digits in the number.

# Examples:

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# Input: positive integer, output: array of numbers in number
# get argument
# make into string, split, put into array as integers again. Return array.

# def digit_list(integer)
#   p integer.digits.reverse
# end

def digit_list(integer)
  arr = integer.to_s.split(//)
  arr.map! { |x| x.to_i}
end

p digit_list(123)
# Convert a String to a Number!
# The String#to_i method converts a string of numeric characters (
# including an optional plus or minus sign) to an Integer. 
# String#to_i and the Integer constructor (Integer()) behave similarly. 
# In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry 
# about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. Your method should do this the 
# old-fashioned way and calculate the result by analyzing the characters in the string.

# Examples

=begin
input: string, output: integer

rules: to_i and integer method (not allowed)
valid digit, don't worry about positive or negative

DS: string, integer
hash: keys: string, values: integer

def method parameter str
integer_conversion_hash ('0'..'9') keys, and add values of integers
iterate over using each |n|
  n = integer_conversion_hash[n]
end
=end

def array_to_integer(array)

  counter = 0
  array = array.reverse
  
  loop do
    array[counter].to_s.to_i
    array[counter] *= 10**counter
    counter += 1
    break if counter == array.size
  end
  
  array.reduce(:+)
end

def string_to_integer(string)
  integer_conversion_hash = {}
  ('0'..'9').to_a.each_with_index do |integer, idx|
    integer_conversion_hash[integer] = idx
  end
  array = string.split('')
  array.map! do |n|
    n = integer_conversion_hash[n]
  end
  
  array_to_integer(array)
end


p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

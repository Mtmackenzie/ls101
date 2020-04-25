#  REDO LATER

# The most interesting aspect of this method is the use of string[1..-1] to obtain the remainder of the string after a leading + or -. This notation simply means to extract the characters starting at index 1 of the string (the second character) and ending with the last character (index -1).

# Convert a String to a Signed Number!
# In the previous exercise, you developed a method that converts simple numeric 
# strings to Integers. In this exercise, you're going to extend that method to 
# work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. The String may have a leading + or - sign; if the first 
# character is a +, your method should return a positive number; if it is a -, 
# your method should return a negative number. If no sign is given, you should 
# return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such 
# as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

# Examples
def array_to_integer(arr)

  counter = 0
  
  loop do
    arr[counter].to_s.to_i
    arr[counter] = arr[counter] * 10**counter
    counter += 1
    break if counter == arr.size
  end
  
  arr.reduce(:+)
end

def string_to_integer(ary)

  integer_conversion_hash = {}
  ('0'..'9').to_a.each_with_index do |integer, idx|
    integer_conversion_hash[integer] = idx
  end
  ary.map! do |n|
    n = integer_conversion_hash[n]
  end
  
  array_to_integer(ary)
end

def string_to_signed_integer(string)
  array = string.split('').reverse
  leading_sign = array.pop if array[-1] == '-' || array[-1] == '+'
  if leading_sign == '-'
    string_to_integer(array) * -1
  else
    string_to_integer(array)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
# Write a method that takes two strings as arguments, determines the longest of 
# the two strings, and then returns the result of concatenating the shorter 
# string, the longer string, and the shorter string once again. You may assume 
# that the strings are of different lengths.

=begin
input: two strings, output: concatenated strings

rules: strings of different lengths, different object, can have an empty string

DS: string

Algo:
define a method with two parameters, str1 and str2

if str1 size less than str 2, str1 + str2 + str1
else str2 + str1 + str2
end

=end

def short_long_short(str1, str2)
  if str1.size < str2.size
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

# Examples:

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
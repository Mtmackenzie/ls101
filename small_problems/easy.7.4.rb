# Swap Case
# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Example:
=begin
Input: str
Output: new str with cases swapped
Rules: other characters unchanged

DS: str, array

Algo:
define a method that takes a string
create array with uppercase and lowercase letters
change str to arr using chars, iterate using map
if letter is included in uppercase, .downcase
elsif letter is included in dowcase, .upcase
else letter
Join

=end

def swapcase(str)
  uppercase = ('A'..'Z').to_a
  lowercase = ('a'..'z').to_a
  str.chars.map do |char|
    if uppercase.include?(char)
      char.downcase
    elsif lowercase.include?(char)
      char.upcase
    else
      char
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
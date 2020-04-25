# ASCII String Value
# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

=begin
input: string
output: sum of the ASCII values of every character (integer)

rules: if empty string, return 0
do spaces count? => yes

DS: string, number variable

Algo:
define method that takes a string as a parameter
initialize a variable called sum, set to 0
call each method on string, if char.ord != nil, sum += char.ord
sum
=end

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord if char.ord != nil}
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
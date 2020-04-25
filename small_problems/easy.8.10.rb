# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

# Examples:

=begin
Input: string
Output: middle character
Rules: will always be non-empty. If odd length, return one character, else return two.
Problem: based on the size of the string, return the character or characters at halfway point using string element reference

DS: str

Algo:
define method, 1 param, str
 find size of string
 ternary oper. to determine if the size is odd, if so, use string element reference to return the str[size/2], else return str[size/2 - 1, size/2]

=end

def center_of(str)
  str.size.odd? ? str[str.size/2] : str[str.size/2 - 1..str.size/2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
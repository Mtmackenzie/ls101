# Write a method that returns true if the string passed as an 
# argument is a palindrome, false otherwise. A palindrome reads 
# the same forward and backward. For this exercise, case matters 
# as does punctuation and spaces.
# 
# input: string, output is a return value of boolean
# string, make to string, chars, reverse, join, compare to original string

# Examples:

def palindrome?(string)
  string.to_s.chars.join('') == string.to_s.chars.reverse.join('')
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
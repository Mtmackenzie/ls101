# The End Is Near But Not Here
# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# Examples:

=begin
Input: string
Output: string (next to last word)
Rules: argument will always have at least two words
Problem: return second to last word

DS: array, string

Algo:
define method with str param
split the str into an array and use array elem reference to reference the word at index -2

=end

def penultimate(str)
  str.split[-2]
end


p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
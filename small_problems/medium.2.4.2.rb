# Matching Parentheses?
# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
# Note that balanced pairs must each start with a (, not a ).
# Examples:
=begin
Input: string
Output: boolean
Rules: order parenthesis matters, must be balanced
Problem: make sure there is always an open parenthesis, closed parenthesis after that somewhere. more open than closed until the end.

DS: string, arrays, boolean

Algo:
define a method takes str
paren_num = 0
iterate over the string, each_char
  check if it's a paren
    if it's open paren, += 1 paren_num
    if it's closed paren, -= 1 paren_num
    paren_num < 0, return false

paren_num == 0

=end
def balanced?(str)
  paren_num = 0
  str.each_char do |char|
    paren_num += 1 if char == '('
    paren_num -= 1 if char == ')'
    return false if paren_num < 0
  end
  paren_num == 0
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
# Matching Parentheses?
# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
# Note that balanced pairs must each start with a (, not a ).
# Examples:

=begin
Input: string
Output: boolean
Rules: nested parentheses, can have no parentheses, order (, )
Problem: pull out parenthesis into separate array, iterate over that array, for open paren, check to see if there is a closed parenthesis after that, if there is, pop?, slice?, delete
  if there is not closed parenthesis, return false
  if there is an open paren left over, return false
  
  otherwise, return true

DS: arrays, string

Algo:
define method called balanced?, str
convert str to array, chars, select, save values into paren_ary
return false if paren_ary.odd?
iterate over paren_ary, each with index
  - is the first element an open parenth? if not, return false
    - is there a closed parenthesis after that? 
      same for closed parenthesis, ary.slice!(ary.index(i)
paren_ary.empty? if yes, return true, otherwise, false
=end

def balanced?(str)
  parentheses = ['(', ')']
  paren_ary = str.chars.select {|char| char if parentheses.include?(char)}
  index = 0
  loop do
    break if index == paren_ary.size
  # paren_ary.each do |char|
    p paren_ary
    if paren_ary[index] == '('
      if paren_ary.include?(')')
        paren_ary.slice!(paren_ary.index(')'))
        paren_ary.slice!(paren_ary.index('('))
      else
        return false
      end
    else
      return false
    end
  end
  paren_ary.empty? #|| paren_ary == parentheses
end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') #== true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false
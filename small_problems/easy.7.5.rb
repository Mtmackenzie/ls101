# Staggered Caps (Part 1)
# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Example:
=begin
Input: string
Output: new string, staggered capitalization
Rules: characters that are not letters count in the switching pattern - .upcase and .downcase methods don't seem to care about numbers and other chars
start with capitalized letter
doesn't matter if original is caps or not

DS: str, array (chars, map with index)

Algo:
define method staggered_case takes one string parameter
string to array using chars, use map with index, if the index is even, upcase the letter, if odd, lowercase, 
join
=end

def staggered_case(str)
  str.chars.map.with_index {|el, i| i.even? ? el.upcase : el.downcase}.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
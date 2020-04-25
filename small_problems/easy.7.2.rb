# Lettercase Counter
# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

# Examples

=begin
Input: string
Output: hash {lowercase: _, uppercase: _, neither: _}
Rules: neither includes spaces, other chars, nums
input could be empty string

DS: hash, array for iteration

Algo:
define a method that takes str param
initialize results hash with lowercase, uppercase, neither keys and all values set at 0
initialize lowercase_letters array with alpha range .to_a of lowercase
initialize uppercase_letters array ditto
convert str into array using chars, call each with block, el param
  if hsh[:lowercase] += 1 lowercase_letters.include?(el)
  elsif repeat for uppercase
  else neither += 1
  

return results
=end

def letter_case_count(str)
  results = {lowercase: 0, uppercase: 0, neither: 0}
  lowercase_letters = ('a'..'z').to_a
  uppercase_letters = ('A'..'Z').to_a
  str.chars.each do |el|
    if lowercase_letters.include?(el)
      results[:lowercase] += 1
    elsif uppercase_letters.include?(el)
      results[:uppercase] += 1
    else
      results[:neither] += 1
    end
  end
  results
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
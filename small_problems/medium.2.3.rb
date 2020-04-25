# Lettercase Percentage Ratio
# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Examples
=begin
Input: string
Output: hash: percentage that are lowercase, uppercase, neither
Rules: always contain one character. spaces count as neither character.
Problem: iterate over characters in arg, count their amounts, count total, and put everything in a hash with percentages

DS: hash, array

Algo:
def method, str
create a results hash = {lowercase: 0, uppercase: 0, neither: 0}
init. letter array, lowercase and uppercase
str.chars, iterate over using each
  if the char included in the lower ary, results[:lowercase] += 1
  elsif same upper
  else  += neither

iterate over each element of the hash by using keys array
  replace the value with the percentage (value/str.size.to_f * 100)

return results hash
=end

def letter_percentages(str)
  results = {lowercase: 0, uppercase: 0, neither: 0}
  lower_letters = ('a'..'z').to_a
  upper_letters = ('A'..'Z').to_a
  
  str.chars.each do |char|
    if lower_letters.include?(char)
      results[:lowercase] += 1 
    elsif upper_letters.include?(char)
      results[:uppercase] += 1 
    else
      results[:neither] += 1
    end
  end
  
  results.keys.each do |key|
    results[key] = (results[key] / str.size.to_f) * 100
  end
  
  results
end


p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
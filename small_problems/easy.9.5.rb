# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

# Examples:

=begin
Input: string
Output: boolean
Rules: only consider alpha characters. empty string, true.
Problem: check if all the alpha characters are uppercase or not

DS: arrays

Algo:
create an array of uppercase alpha 
iterate over the string, chars
  - first check to see if the char.upcase is present alpha array
    - if is, then check to see if char is present alpha array
      - if not, return false
true
=end

def uppercase?(str)
  alpha = ('A'..'Z').to_a
  str.chars.each do |char|
    if alpha.include?(char.upcase)
      if !alpha.include?(char)
        return false
      end
    end
  end
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
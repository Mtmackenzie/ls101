# Write another method that returns true if the string passed as 
# an argument is a palindrome, false otherwise. This time, however, 
# your method should be case-insensitive, and it should ignore all 
# non-alphanumeric characters. If you wish, you may simplify things 
# by calling the palindrome? method you wrote in the previous exercise.
# same method
# downcase everything
# reject not in a..z and 0..9
# Examples:

def real_palindrome?(string)
  letters = ('a'..'z').to_a
  numbers = ("0".."9").to_a
  new_array = string.downcase.chars.select do |character|
    letters.include?(character) || numbers.include?(character)
  end
  new_array.join('') == new_array.reverse!.join('')
  # new_string.join(
  # new_string.join('') == new_string.reverse.join('')
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
p real_palindrome?('Megan') == false
p real_palindrome?('1......2...3,   3:   2  1') == true
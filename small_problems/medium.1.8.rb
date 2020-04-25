# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

=begin
Input: string
Output: same string, numbers changed to string digits
Rules: number limit? assume it's a phone number.

DS: string, arrays

Algo:
define method that takes str as parameter
create a num_array with each str num at its corresponding index
create an array out of the string using split, name it str_ary
iterate over str_ary using each, if present in num_array, gsub! out of string at num_array.index(word).to_s
=end

def word_to_digit(str)
  num_array = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  valid_chars = ('a'..'z').to_a.push(' ')

  str_ary = str.downcase.gsub!(/./) {|letter| valid_chars.include?(letter) ? letter : ''}.split
  
  str_ary.each do |word|
    if num_array.include?(word)
      str.gsub!(word, num_array.index(word).to_s)
    end
  end
  
  str
end


p word_to_digit('Please call me at five five five one two three four. freight Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
require 'pry'

# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.

# input: two string. method finds substring. 
# evaluate truthiness if finding substring within both string
# substring = same characters in both strings. these characters can repeat.
# edge cases - empty string, because doesn't have anything in it, prob be nil?
# case matters? I think it does

# separate strings into arrays using chars, set each one to new return value
# create a new array called substrings
# use map method on first array, compare each letter of second array to see if it includes?, 
# if it does, add to substrings array
# count size of the substring array, if > 1, true

def substring_test(str_one, str_two)
  ary_one = str_one.chars
  ary_two = str_two.chars
  substrings = []
  ary_one.map do |character|
    if ary_two.include?(character)
      substrings << character
    end
  end
  substrings.uniq.size >= 2
end


p substring_test('Something', 'Fun') ==  false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true

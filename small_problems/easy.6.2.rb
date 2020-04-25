# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

=begin
input: array of strings, output: array of strings with vowels removed
rules: could be uppercase. return empty string if all vowels

DS: array, strings - map, gsub!

algo:
vowels = %("a", "e", "i", "o", "u")
use map, word, word.downcase  - ?, gsub

=end

def remove_vowels(ary)
  ary.map {|word| word.gsub(/[aeiouAEIOU]/, '')}
end



p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']
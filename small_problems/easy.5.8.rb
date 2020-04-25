# Alphabetical Numbers
# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Examples:

=begin
SORT

input: range of integers converted to array
output: array sorted based on alphabetical English words

rules:

DS: string, hash, array

Algo:
define method wordify
take string above, remove commas (delete), split into array called words_array
create new hash, iterate over words_array using each with index and new hash[word] = index
end method

define method alph--sort with array as parameter
wordify hash
create words_array = []
iterate over range using wordify hash to find keys of integers matching values
sort words_array
numbers array
iterate over words_array and add integer values to numbers array
return numbers_array

=end

WORDS = 'zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen'

def wordify_numbers(string)
  hash = {}
  string.delete(',').split.each_with_index do |word, index|
    hash[word] = index
  end
  hash
end

def alphabetic_number_sort(array)
  word_hash = wordify_numbers(WORDS)
  words_array = []
  num_array = []
  
  array.each do |num|
    words_array << word_hash.key(num)
  end
  words_array.sort.each do |word|
    num_array += word_hash.values_at(word)
  end
  num_array
end




p alphabetic_number_sort((0..19).to_a) #== [  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,  6, 16, 10, 13, 3, 12, 2, 0]
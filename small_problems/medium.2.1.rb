# Longest Sentence
# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

=begin
Input: text file
Output: longest sentence printed, number of words (integer)
Rules: sentences end with ., !, or ?  all sequences of characters with spaces around it count as word.
Problem: splitting text into sentences (array), iterate over array to count the number of words in each sentence in order to find the max sentence size, print out that sentence and the number of words

DS: strings, arrays

Algo:
define method longest_sentence string param, str
store end punctuation marks into an array, end_marks
longest_sentence = []
current_ary = []
split string by spaces, iterate over each word using each
  if the word contains one of the end_mark characters, then insert it into current ary, count the size of the current_sentence ary and reassign size var to size if the current_ary size is greater than the the current sentence size, also reassign current sentence to the current_ary.join(' ')
    reset the current sentence ary to equal []
  else
    current_ary << word
  
print current_sentence, size
=end

def longest_sentence(str)
  longest_sentence = []
  current_ary = []
  
  str.split.each do |word|
    if word.chars.include?(".") || word.chars.include?("?") || word.chars.include?("!")
      current_ary << word
      longest_sentence = current_ary if current_ary.size > longest_sentence.size
      current_ary = []
    else
      current_ary << word
    end
  end
  puts longest_sentence.join(' ')
  puts longest_sentence.size
end

def longest_sentence(str)
  p str.scan(/\!/)
end


text = 'Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this!

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.'

longest_sentence(text)
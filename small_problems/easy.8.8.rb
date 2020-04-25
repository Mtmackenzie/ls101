# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Examples:

def double_consonants(str)
  consonants = ('a'..'z').to_a
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants.delete_if {|char| vowels.include?(char)}
  str.chars.map {|char| consonants.include?(char.downcase) ? char * 2 : char}.join
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
# Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

# Example

=begin
Algo:
puts strings that ask for different parts of speech
gets, chomp, save each into a lv
puts a string with string interpolation containing values
=end


puts "Enter a noun:"
noun1 = gets.chomp
puts "Enter a different noun:"
noun2 = gets.chomp
puts "Name a place:"
noun3 = gets.chomp
puts "Enter an adjective:"
adjective = gets.chomp
puts "Enter a verb:"
verb = gets.chomp
puts "Enter an adverb:"
adverb = gets.chomp


puts "Now, this is a story all about how my #{noun1} got #{adjective}-turned upside down, and I'd like to #{verb} a minute, just sit #{adverb}, I'll tell you how I became the #{noun2} of a town called #{noun3}."
advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.gsub "important", "urgent"

puts "Super guper bag".gsub "g", "d" # => "Super duper bad"

puts "Ruby is 13%".gsub( '%' ) {|c| c.ord.to_s + ' ' } # => "Ruby is 1337"

puts "Terribly complex".gsub "complex", "simple" # => "Terribly simple"
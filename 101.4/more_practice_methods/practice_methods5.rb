# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Bebbles)

flintstones.each.with_index {|name, i| puts i if name.start_with?("Be")}
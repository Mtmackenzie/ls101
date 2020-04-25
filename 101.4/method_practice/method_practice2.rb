ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# Add up all of the ages from the Munster family hash:
# input: ages, output: print added values
# make new array, each or maybe shift, add current value to array, add up array objects

age_total = 0
ages.each {|key, value| age_total += value}

p age_total

 
 
# Add up all of the ages from the Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# Solution 2

age_total = 0
ages.each do |key, value|
  age_total += value
end

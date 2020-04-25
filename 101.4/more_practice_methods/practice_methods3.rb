# remove people with age 100 and greater.

ages = { "Herman" => 320, "Lily" => 300, "Grandpa" => 420, "Eddie" => 100 }

p ages.select {|k,v| v >= 100}



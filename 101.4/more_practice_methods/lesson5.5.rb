#  total age of just male members of family

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

males = munsters.select {|k, v| v['gender'] == 'male'}

males_ages = []
males.each do |k, v|
  males_ages << v['age']
end

p males_ages.sum
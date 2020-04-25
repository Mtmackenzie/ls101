munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

p munsters_keys = munsters.keys

munsters_keys.each do |key|
  case munsters[key]["age"]
    when 0..17
      munsters[key]["age_group"] = 'kid'
    when 18..64
      munsters[key]["age_group"] = "adult"
    else
      munsters[key]["age_group"] = "senior"
    end
end

p munsters



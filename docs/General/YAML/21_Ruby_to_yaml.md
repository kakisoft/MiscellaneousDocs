```



create_yaml_file01.rb
==============================
require 'yaml'

# .to_yaml

users = [
  {'name' => 'taguchi', 'score' => 90},
  {'name' => 'fkoji', 'score' => 100},
]

puts users.to_yaml

#----#

File.open("created_yaml_file01.yml", "w") do |f|
  f.puts(users.to_yaml)
end
==============================



```
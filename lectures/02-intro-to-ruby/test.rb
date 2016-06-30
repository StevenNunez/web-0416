1 + 1             # => 2
"steven".reverse  # => "nevets"
steven = {
  name: "Steven"  # => "Steven"
}                 # => {:name=>"Steven"}

antoin = {
  name: "Antoin"  # => "Antoin"
}                 # => {:name=>"Antoin"}

sophie = {
  name: "Sophie"  # => "Sophie"
}                 # => {:name=>"Sophie"}

teachers = [steven,antoin, sophie]  # => [{:name=>"Steven"}, {:name=>"Antoin"}, {:name=>"Sophie"}]

teachers.last[:name]  # => "Sophie"

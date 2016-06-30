1.odd?                                  # => true
1 + 1                                   # => 2
1.+(1)                                  # => 2
1.send(:odd?)                           # => true
names = ["Steven", "Sophie", "Antoin"]  # => ["Steven", "Sophie", "Antoin"]
names[0]                                # => "Steven"
names.[](0)                             # => "Steven"
steven = {name: "Steven"}               # => {:name=>"Steven"}
steven[:name]                           # => "Steven"
steven.[](:name)                        # => "Steven"
:name.zorp!                             # ~> NoMethodError: undefined method `zorp!' for :name:Symbol

# ~> NoMethodError
# ~> undefined method `zorp!' for :name:Symbol
# ~>
# ~> /Users/StevenNunez/school/web-0416/lectures/03-object-orientation/code/01_everything_is_an_object.rb:11:in `<main>'

# class Person
#   def name
#    @name ||= "Bob"  # => "Hank", "Bob"
#  end
#
#  def name=(new_name)
#    @name = new_name   # => "Hank"
#  end
# end
#
# hank = Person.new   # => #<Person:0x007fb45a9a1eb8>
# hank.name = "Hank"  # => "Hank"
# hank.name           # => "Hank"
#
# bob = Person.new   # => #<Person:0x007fb45a9a1800>
# bob.name           # => "Bob"
#

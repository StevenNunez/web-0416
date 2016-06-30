# * How can I instantiate an object with a name within a class method?
# class Person
#   # def self.new_with_name(name)
#   #   instance = self.new # happens at some point
#   #   instance.name = name        # => "Bob"
#   #   instance                    # => #<Person:0x007fb57d0022a8 @name="Bob">
#   #   # has to return the new instance with the @name property set
#   # end
#
#   def self.new_with_name(name)
#     instance = self.new(name: name)
#     instance
#     # has to return the new instance with the @name property set
#   end
#
#   def initialize(name="")
#     @name = name
#   end
# end
#
bob = Person.new_with_name("Bob")  # => #<Person:0x007fb57d0022a8 @name="Bob">
bob.name == "Bob"                  # => true

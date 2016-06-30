# Why do we use a attr accessor :name and not reader since we initialized with a name
class Person
  def initialize(name)
    @name = name        # => "Bob"
  end

  def the_name
    @name       # => "Bob"
  end
end

bob = Person.new("Bob")  # => #<Person:0x007f854c25aa48 @name="Bob">
bob.the_name == "Bob"    # => true

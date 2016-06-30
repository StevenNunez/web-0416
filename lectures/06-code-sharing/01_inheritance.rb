class Person
  attr_reader :name     # => nil
  def initialize(name)
    @name = name        # => "Bob"
  end

  def to_s
    "Hi, My name is chicka chicka #{name}"  # => "Hi, My name is chicka chicka Bob"
  end
end

bob = Person.new("Bob")  # => #<Person:0x007faab88964c0 @name="Bob">
bob.name                 # => "Bob"
bob.to_s                 # => "Hi, My name is chicka chicka Bob"

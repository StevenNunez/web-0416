class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end

# Person = Struct.new(:name, :age)  # => Person

bob = Person.new("Bob", :old)  # => #<struct Person name="Bob", age=:old>
bob.name == "Bob"              # => true
bob.name = "Charlie"           # => "Charlie"
bob.age                        # => :old

class Person
  attr_reader :name     # => nil
  puts self             # => nil
  def initialize(name)
    @name = name        # => "Bob"
  end

  # def self.new
  #   instance = self.allocate
  #   instance.initialize
  # end

  def print_self
    puts self
  end

  def inspect
    self.name  # => "Bob"
  end
end

bob = Person.new("Bob")  # => Bob

puts self  # => nil

# >> Person
# >> main

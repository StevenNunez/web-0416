class Person
  attr_accessor :name   # => nil
  def initialize(name)
    @name = name        # => "Steven", "Sophie", "Antoin"
  end
end

def print_each_name(people)
  i = 0
  while i < people.length
    puts get_name(people[i])
    i +=1
  end
end

def print_each(people)
  i = 0                    # => 0
  while i < people.length  # => true, true, true, false
    puts yield(people[i])  # => nil, nil, nil
    i +=1                  # => 1, 2, 3
  end                      # => nil
end

def get_name(person)
  person.name
end

steven = Person.new("Steven")  # => #<Person:0x007ff1f09387c8 @name="Steven">
sophie = Person.new("Sophie")  # => #<Person:0x007ff1f09383b8 @name="Sophie">
antoin = Person.new("Antoin")  # => #<Person:0x007ff1f0938098 @name="Antoin">

# print_each_name([steven, sophie, antoin])
print_each([steven, sophie, antoin]) do |person|
  person.name.upcase.reverse.split(//).shuffle.join  # => "NVETES", "EHPSIO", "OITNNA"
end                                                  # => nil


# >> NVETES
# >> EHPSIO
# >> OITNNA

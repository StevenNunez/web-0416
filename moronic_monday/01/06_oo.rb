kanye = Object.new  # => #<Object:0x007fbd7b0a6820>

def kanye.name
  "Kanye damn it"  # => "Kanye damn it"
end

kanye.name  # => "Kanye damn it"


class Person
  def self.purpose
    "Makes people"  # => "Makes people"
  end
end

# def Person.purpose
#   "Makes Peeps"     # => "Makes Peeps"
# end

Person.purpose  # => "Makes people"

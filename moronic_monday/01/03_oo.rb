# I keep using class variables versus self by trial and error. Can we review when to use each?

class Person
  def initialize(name)
    @@all.empty?
    @name = name
    self # instance
    @@all << self
  end

  def blows_up
    raise :hell
  end

  @@all = []

  # def self.a_class_method
  #   @@all
  # end
  #
  # def a_instance_method
  #   @@all
  # end

  # def self.new
  #   instance = self.allocate
  #   instance.initialize
  # end
end

bob = Person.new("Bob")

class Person
  SPECIES = :human

  attr_accessor :name
  include Friendable
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @evil = true
  end

  private

  def evil
    @evil
  end
end

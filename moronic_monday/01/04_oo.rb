# I'm still a little confused about the following situation: I make a attr_accessor (e.g. :height) and can call it inside of other methods by just saying height and not having to put self.height. However, in some instances, I have to use self.height and not just height or it won't work correctly, I believe it's only when using the self.height= method inside of another method, I think ... What's up with that? What's a good way to remember? Am I just better off using self.height all the time?


class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def update_name_with_bang
    # self.send("name=", )
    # name = name + "!"
    # self.name = name + "!"
    # self.name=(name + "!")
    self.name += "!"
    self.name = self.name + "!"
  end
end

bob = Person.new("Bobby")
bob.name == "Bobby"
bob.update_name_with_bang
bob.name == "Bobby!"

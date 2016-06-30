# Is a relationship Inheritance
# Has a relationship Modules Mixins
# Super class!!!!!
class Media
  attr_accessor :name, :location
end
# Super class

# Mixin
module Viewable
  attr_accessor :resolution
end
#

class Video < Media
  include Viewable
  def description
    @description
  end

  def description=(new_description)
    @description = new_description
  end
end

class Image < Media
  include Viewable
end

class Audio < Media
  # attr_accessor :name, :location, :quality
  attr_accessor :quality
end

never_gonna_give_you_up = Video.new
never_gonna_give_you_up.resolution = "4k"
never_gonna_give_you_up.resolution
Video.ancestors

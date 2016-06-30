class Media
  attr_accessor :name, :location  # => nil
end

module Viewable
  attr_accessor :resolution                                # => nil
  def description=(new_description)
    @description = "New Viewable item #{new_description}"
  end
end
module Describable
  def describe
    "Hey, I'm a class"                                     # => "Hey, I'm a class"
  end
end

class Video < Media
  prepend Viewable   # => Video

  extend Describable  # => Video
  def description
    @description
  end

  def description=(new_description)
    # @description = new_description   # => "Best video ever"
    # result = super                   # => "New Viewable item Best video ever"
    # @description = result.reverse    # => "reve oediv tseB meti elbaweiV weN"
    @description = super.reverse
  end
end

Video.describe  # => "Hey, I'm a class"


never_gonna_give_you_up = Video.new  # => #<Video:0x007fea9b1b0cf0>
Video.ancestors                      # => [Viewable, Video, Media, Object, JSON::Ext::Generator::GeneratorMethods::Object, Kernel, BasicObject]
# never_gonna_give_you_up.resolution = "4k"                # => "4k"
# never_gonna_give_you_up.resolution                       # => "4k"
# never_gonna_give_you_up.description = "Best video ever"  # => "Best video ever"
# never_gonna_give_you_up.description                      # => "reve oediv tseB meti elbaweiV weN"

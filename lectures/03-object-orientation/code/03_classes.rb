# Song = Class.new do  # => Class
class Song
  attr_accessor :title, :artists, :duration           # => nil
  # def title
  #   @title   # => "Work!", "Work!"
  # end
  #
  # def title=(new_title)
  #   @title = new_title   # => "Work!"
  # end
  #
  # def artists
  #   @artists   # => ["Rihanna", "Drake"], ["Rihanna", "Drake"]
  # end
  #
  # def artists=(new_artists)
  #   @artists = new_artists   # => ["Rihanna", "Drake"]
  # end
  # def duration
  #   @duration   # => "3 Minutes"
  # end
  #
  # def duration=(new_duration)
  #   @duration = new_duration   # => "3 Minutes"
  # end
  def describe
    "#{self.title} by #{self.artists.join(' and ')}"  # => "Work! by Rihanna and Drake"
  end
end

work = Song.new                      # => #<Song:0x007f94c20ae688>
work.title = "Work!"                 # => "Work!"
work.title                           # => "Work!"
work.artists = ["Rihanna", "Drake"]  # => ["Rihanna", "Drake"]
work.artists                         # => ["Rihanna", "Drake"]
work.describe                        # => "Work! by Rihanna and Drake"
work.duration = "3 Minutes"          # => "3 Minutes"
work.duration                        # => "3 Minutes"

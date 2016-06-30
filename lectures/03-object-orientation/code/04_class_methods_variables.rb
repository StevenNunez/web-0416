class Song
  PURPOSE = "Use this class to Make songs"                            # => "Use this class to Make songs"
  @@purpose = "The same as above"                                     # => "The same as above"
  # @@all = []
  attr_accessor :title, :artists, :duration                           # => nil
  def initialize(title: title, artists: artists, duration: duration)
    @title = title                                                    # => "Work"
    @artists = artists                                                # => ["Rihanna", "Drake"]
    @duration = duration                                              # => "3 Minutes"
    # @@all << self
  end

  def self.purpose
    "Use this class to make Songs"
    PURPOSE
    @@purpose
  end

  def describe
    "#{self.title} by #{self.artists.join(' and ')}"                  # => "Work by Rihanna and Drake"
  end
end


work = Song.new(title: "Work", artists: ["Rihanna", "Drake"], duration: "3 Minutes")  # => #<Song:0x007fa583045fa8 @title="Work", @artists=["Rihanna", "Drake"], @duration="3 Minutes">
Song::PURPOSE                                                                         # => "Use this class to Make songs"
Song::@@purpose
work.title                                                                            # => "Work"
work.artists                                                                          # => ["Rihanna", "Drake"]
work.describe                                                                         # => "Work by Rihanna and Drake"
work.duration                                                                         # => "3 Minutes"

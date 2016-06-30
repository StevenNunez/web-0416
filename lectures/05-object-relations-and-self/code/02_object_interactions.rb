class Song
  attr_reader :title     # => nil
  attr_accessor :artist  # => nil
  def initialize(title)
    @title = title       # => "Work"
  end

  def artist=(new_artist)
    @artist = new_artist   # => #<Artist:0x007f93e31d8f70 @name="New Release! Rihanna", @songs=[#<Song:0x007f93e31d8a98 @title="Work", @artist=#<Artist:0x007f93e31d8f70 ...>>]>
  end
end

class Artist
  attr_accessor :name, :songs  # => nil
  def initialize(name)
    @name = name               # => "Rihanna"
    @songs = []                # => []
  end

  def add_song(song)
    songs << song       # => [#<Song:0x007f93e31d8a98 @title="Work">]
    update_name         # => "New Release! Rihanna"
    song.artist = self  # => #<Artist:0x007f93e31d8f70 @name="New Release! Rihanna", @songs=[#<Song:0x007f93e31d8a98 @title="Work", @artist=#<Artist:0x007f93e31d8f70 ...>>]>
    # update_artist_for_song(song)  # => #<Artist:0x007fab5c045038 @name="New Release! Rihanna", @songs=[#<Song:0x007fab5c044bb0 @title="Work", @artist=#<Artist:0x007fab5c045038 ...>>]>
  end

  private                               # => Artist
  def update_name
    self.name = "New Release! #{name}"  # => "New Release! Rihanna"
  end

  def update_artist_for_song(song)
    song.artist = self
  end
end

rihanna = Artist.new("Rihanna")  # => #<Artist:0x007f93e31d8f70 @name="Rihanna", @songs=[]>
work = Song.new("Work")          # => #<Song:0x007f93e31d8a98 @title="Work">
rihanna.add_song(work)           # => #<Artist:0x007f93e31d8f70 @name="New Release! Rihanna", @songs=[#<Song:0x007f93e31d8a98 @title="Work", @artist=#<Artist:0x007f93e31d8f70 ...>>]>
rihanna.name                     # => "New Release! Rihanna"
# work.artist.name

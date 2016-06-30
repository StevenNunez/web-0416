work = Object.new  # => #<Object:0x007fe91214a0e8>
def work.title
  @title           # => "Work", "Work"
end

def work.set_title(new_title)
  @title = new_title           # => "Work"
end

def work.artists
  @artists        # => ["Rihanna", "Drake"], ["Rihanna", "Drake"]
end

def work.set_artists(new_artists)
  @artists = new_artists           # => ["Rihanna", "Drake"]
end

def work.describe
  "#{self.title} by #{self.artists.join(' and ')}"  # => "Work by Rihanna and Drake"
end

def work.duration
  @duration        # => "3 Minutes"
end

def work.set_duration(new_duration)
  @duration = new_duration           # => "3 Minutes"
end

ultra_lightbeam = Object.new  # => #<Object:0x007fe912149e18>
def ultra_lightbeam.title
  @title                      # => "Ultra Lightbeam", "Ultra Lightbeam"
end

def ultra_lightbeam.set_title(new_title)
  @title = new_title                      # => "Ultra Lightbeam"
end

def ultra_lightbeam.artists
  @artists                   # => ["Kayne West"], ["Kayne West"]
end

def ultra_lightbeam.set_artists(new_artists)
  @artists = new_artists                      # => ["Kayne West"]
end

def ultra_lightbeam.describe
  "#{self.title} by #{self.artists.join(' and ')}"  # => "Ultra Lightbeam by Kayne West"
end

def ultra_lightbeam.duration
  @duration                   # => "4 Minutes, 1 Second"
end

def ultra_lightbeam.set_duration(new_duration)
  @duration = new_duration                      # => "4 Minutes, 1 Second"
end

work.set_title("Work")                  # => "Work"
work.title                              # => "Work"
work.set_artists(["Rihanna", "Drake"])  # => ["Rihanna", "Drake"]
work.artists                            # => ["Rihanna", "Drake"]
work.describe                           # => "Work by Rihanna and Drake"
work.set_duration("3 Minutes")          # => "3 Minutes"
work.duration                           # => "3 Minutes"

ultra_lightbeam.set_title("Ultra Lightbeam")         # => "Ultra Lightbeam"
ultra_lightbeam.title                                # => "Ultra Lightbeam"
ultra_lightbeam.set_artists(["Kayne West"])          # => ["Kayne West"]
ultra_lightbeam.artists                              # => ["Kayne West"]
ultra_lightbeam.describe                             # => "Ultra Lightbeam by Kayne West"
ultra_lightbeam.set_duration("4 Minutes, 1 Second")  # => "4 Minutes, 1 Second"
ultra_lightbeam.duration                             # => "4 Minutes, 1 Second"

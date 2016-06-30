class Artist
  def albums
    @albums ||= []
  end
  def add_album(album)
    albums << album
  end
end

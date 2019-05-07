class Song
  attr_accessor :name
  attr_reader :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def self.new_by_filename(filename)
    song = new
    split_name = filename.split(" - ")
    song.artist = Artist.split_name.first
    song.name = split_name.last.split(".").first
    song
  end
  
end
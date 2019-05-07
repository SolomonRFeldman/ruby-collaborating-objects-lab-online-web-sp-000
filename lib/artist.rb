class Artist
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song  
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    artist = @all.index { |artist| artist.name == name }
    artist == nil ? Artist.new(name) : @@all[artist].name
  end
  
  def self.all
    @@all
  end
  
end
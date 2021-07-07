class Song
  
  attr_accessor :artist, :genre
  attr_reader :name
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @@all << self
    @genre = genre
    @artist = artist
    genre.songs << self
  end
  
  def self.all
    @@all
  end
  
end
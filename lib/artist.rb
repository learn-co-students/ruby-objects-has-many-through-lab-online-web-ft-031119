class Artist 
  @@all = []
  attr_reader :name 
  
  def self.all
    @@all 
  end
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def genres
    genres = []
    self.songs.select{|song| genres << song.genre}
    genres 
  end
end
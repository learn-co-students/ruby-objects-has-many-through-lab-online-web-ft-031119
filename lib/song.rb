class Song
  attr_accessor :artist
  attr_reader :name,:genre
  @@all = []
  def initialize(name,artist,genre)
    @name,@artist,@genre = name,artist,genre
    @@all << self
  end
  def self.all
    @@all
  end
end

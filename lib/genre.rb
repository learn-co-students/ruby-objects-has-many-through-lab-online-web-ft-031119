class Genre
  
  attr_accessor :songs 
  attr_reader :name
  @@all = []
   
   def initialize(name)
     @name = name
     @@all << self
     @songs = []
   end
    
   def self.all
     @@all
   end
   
   
   def artists
     songs.map do |song|
       song.artist
     end
   end
   
end
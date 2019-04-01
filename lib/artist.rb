require "pry"

class Artist
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select{|s|
            s.artist == self
        }
    end

    def genres
        # take all the songs that match this artist then collect all the genres of them in an array
        songs.map(&:genre)
    end
end
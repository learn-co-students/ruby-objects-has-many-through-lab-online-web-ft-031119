class Artist 
  @@all =[]
  attr_accessor :name, :songs 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  
  
  
end
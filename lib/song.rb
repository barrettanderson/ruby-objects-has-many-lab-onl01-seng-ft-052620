class Song
  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name)
    @name = name

  end


  def self.all
    @@all
  end

end

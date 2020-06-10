class Artist
  attr_accessor :name


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
  end

  def song_count

  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

end

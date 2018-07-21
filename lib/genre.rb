class Genre

  attr_accessor :name, :songs, :artist

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song_instance|
      song_instance.genre == self
    end
  end

  def artists
    songs.map do |one_song|
      one_song.artist
    end
  end
  
end

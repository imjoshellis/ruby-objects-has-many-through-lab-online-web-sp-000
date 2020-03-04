class Song
  attr_accessor :name, :genre, :artist

  @@all

  def all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    Song.all << self
  end

class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = Array.new
    @artists = Array.new
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    genre = Genre.new(name)
    genre.save
    genre
  end

  def songs
    @songs
  end

  def songs=(song)
    @songs << song
  end

  def artists=(song)
    @artists << song.artist
  end

  def artists
    @songs.collect { |song| song.artist}
  end
end

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = Array.new
    @genres = Array.new
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
    artist = Artist.new(name)
    artist.save
    artist
  end

  def songs
    @songs
  end

  def add_song(song)
    if song.artist == self
    else
      song.artist = self
      @songs << song
    end
  end

  def genres=(genre)
    @genres << genre
  end

  def genres
    @songs.collect{|song| song.genre}
  end
end

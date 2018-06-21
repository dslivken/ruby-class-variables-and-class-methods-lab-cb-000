require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@genres = {}
  @@scount = 0
  @@artists = []

  def initialize (name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@scount +=1
    update_genres(genre)
    update_artists(artist)
  end

  def update_genres (genre)
    if !@@genres.keys.include?(genre)
      @@genres[genre]=0
    end
    @@genres[genre] +=1
  end

  def update_artists (artist)
    if !@@artists.include?(artist)
      @@artists<<artist
    end
  end

  def self.genres
    @@genres
  end

  def self.count
    @@scount
  end


end


song1=Song.new("Song 1", "David", "Rap")
song2=Song.new("Song 2", "Tom", "Jazz")
song3=Song.new("Song 3", "Howard", "Rap")
song4=Song.new("Song 4", "David", "Rock")
binding.pry

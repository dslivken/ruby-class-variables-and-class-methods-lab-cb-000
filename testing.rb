require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@genres = {}

  @@scount = 0

  def initialize (name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@scount +=1
    update_genres(genre)
  end

  def update_genres (genre)
    if !@@genres.keys.include?(genre)
      @@genres[genre]=0
    end
    @@genres[genre] +=1
  end

  def self.genres
    @@genres
  end


end


song1=Song.new("Song 1", "David", "Rap")

binding.pry

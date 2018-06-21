require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @GENRES = {}

  @@scount = 0

  def initialize (name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@scount +=1
    update_genres(genre)
  end

  def update_genres (genre)
    if !@GENRES.keys.include?(genre)
      @GENRES[genre]=0
    end
    @GENRES[genre] +=1
  end

end




binding.pry

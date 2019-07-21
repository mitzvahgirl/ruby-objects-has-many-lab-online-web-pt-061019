
require "pry"

class Song
  
  attr_accessor :artist, :name
  # attr_reader
  
  def initialize(name)
    @name = name
  end

def self.new_by_filename(filename)
  #song = filename.split(" - ")[1]
  #song = Song.new(song_name)
  #artist_object = Artist.find_or_create_by_name(filename)[0]
  #song.artist = artist_object
  #song.artist.add_song(self)

  artist, title = filename.split(" - ")
  self.new(title).tap(|song|
  song.artist = Artist.find_or_create_by_name(artist)
  song.artist.add_song(song)
  )
end
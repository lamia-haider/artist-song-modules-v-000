require 'pry'
require_relative '../lib/concerns/memorable'
<<<<<<< HEAD
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
=======

class Artist
  extend Memorable
>>>>>>> 0d73699be65cfbb192b81273cd9c48a4b5fc7e69

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

<<<<<<< HEAD
=======
  #def self.reset_all
  #  self.all.clear
  #end

  #def self.count
  #  @@artists.count
  #end

>>>>>>> 0d73699be65cfbb192b81273cd9c48a4b5fc7e69
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end

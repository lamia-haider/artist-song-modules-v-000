require 'pry'
require_relative '../lib/concerns/memorable'
<<<<<<< HEAD
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
=======

class Song

  extend Memorable
>>>>>>> 0d73699be65cfbb192b81273cd9c48a4b5fc7e69

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def artist=(artist)
    @artist = artist
  end

<<<<<<< HEAD
=======
  #def self.reset_all
  #  @@songs.clear
  #end

  def to_param
    name.downcase.gsub(' ', '-')
  end

#  def self.count
#    self.all.count
#  end

>>>>>>> 0d73699be65cfbb192b81273cd9c48a4b5fc7e69
  def self.all
    @@songs
  end
end

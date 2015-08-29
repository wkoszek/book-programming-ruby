# Sample code from Programing Ruby, page 721
require 'code/testunit/song.rb'
require 'forwardable'

class Playlist
  extend Forwardable
  def_delegator(:@list, :<<, :add_song)
  def_delegator(:@list, :size)

  def initialize
    @list = []
  end

  def find(title)
    @list.find {|song| song.title == title}
  end
end

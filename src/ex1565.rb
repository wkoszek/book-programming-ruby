# Sample code from Programing Ruby, page 721
require 'test/unit'
require 'code/testunit/playlist.rb'

class TestPlaylist < Test::Unit::TestCase

  def test_adding
    pl = Playlist.new
    assert_equal(0, pl.size)
    assert_nil(pl.find("My Way"))
    pl.add_song(Song.new("My Way", "Sinatra"))
    assert_equal(1, pl.size)
    s = pl.find("My Way")
    assert_not_nil(s)
    assert_equal("Sinatra", s.artist)
    assert_nil(pl.find("Chicago"))
    # .. and so on
  end
end

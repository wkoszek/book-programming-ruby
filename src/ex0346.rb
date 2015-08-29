# Sample code from Programing Ruby, page 150
$: << "code"

class PlaylistBuilder
  Entry = Struct.new(:artist, :title)

  attr_reader :playlist
  def initialize(db)
    @playlist = []
  end

  def include_artist(name)
    @playlist = [ ]
    7.times { @playlist << Entry.new("krauss", "") }
  end

  def include_title(name)
    @playlist = [ ]
    13.times { @playlist << Entry.new("", "midnight") }
  end

end unless defined? PlaylistBuilder
require 'test/unit'
require 'playlist_builder'
require 'dbi'

class TestPlaylistBuilder < Test::Unit::TestCase

  def setup
    @db = DBI.connect('DBI:mysql:playlists')
    @pb = PlaylistBuilder.new(@db)
  end

  def teardown
    @db.disconnect
  end

  def test_empty_playlist
    assert_equal([], @pb.playlist())
  end

  def test_artist_playlist
    @pb.include_artist("krauss")
    assert(@pb.playlist.size > 0, "Playlist shouldn't be empty")
    @pb.playlist.each do |entry|
      assert_match(/krauss/i, entry.artist)
    end
  end

  def test_title_playlist
    @pb.include_title("midnight")
    assert(@pb.playlist.size > 0, "Playlist shouldn't be empty")
    @pb.playlist.each do |entry|
      assert_match(/midnight/i, entry.title)
    end
  end

  # ...
end

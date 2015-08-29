# Sample code from Programing Ruby, page 355
 Song = Struct.new(:title, :artist)
 song = Song.new("I Got Rhythm", "Gene Kelly")
def append_song(result, song)
  # test we're given the right parameters
  unless result.respond_to?(:<<)
    fail TypeError.new("'result' needs `<<' capability")
  end
  unless song.respond_to?(:artist) && song.respond_to?(:title)
    fail TypeError.new("'song' needs 'artist' and 'title'")
  end
  
  result << song.title << " (" << song.artist << ")"
end

result = ""
append_song(result, song)

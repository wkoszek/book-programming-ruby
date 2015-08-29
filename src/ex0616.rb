# Sample code from Programing Ruby, page 354
 Song = Struct.new(:title, :artist)
 song = Song.new("I Got Rhythm", "Gene Kelly")
def append_song(result, song)
  # test we're given the right parameters
  unless result.kind_of?(String)
    fail TypeError.new("String expected")
  end
  unless song.kind_of?(Song)
    fail TypeError.new("Song expected")
  end
  
  result << song.title << " (" << song.artist << ")"
end

result = ""
append_song(result, song)

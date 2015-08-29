# Sample code from Programing Ruby, page 355
 Song = Struct.new(:title, :artist)
 song = Song.new("I Got Rhythm", "Gene Kelly")
def append_song(result, song)
  result << song.title << " (" << song.artist << ")"
end

result = ""
append_song(result, song)

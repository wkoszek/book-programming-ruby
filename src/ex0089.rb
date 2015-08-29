# Sample code from Programing Ruby, page 44
class SongList
  def initialize
    @songs = Array.new
    @index = WordIndex.new
  end
  def append(song)
    @songs.push(song)
    @index.add_to_index(song, song.name, song.artist)
    self
  end
  def delete_first
    @songs.shift
  end
  def delete_last
    @songs.pop
  end
  def [](index)
    @songs[index]
  end
  def with_title(title)
    for i in 0...@songs.length
      return @songs[i] if title == @songs[i].name
    end
    return nil
  end
  def with_title(title)
    @songs.find {|song| title == song.name }
  end
  def lookup(word)
    @index.lookup(word)
  end
  def create_search(name, params)
    # ...
  end
end  

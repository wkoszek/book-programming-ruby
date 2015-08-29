# Sample code from Programing Ruby, page 53
class Button
  def initialize(label)
  end
end
  class WordIndex
    def initialize
      @index = {}
    end
    def add_to_index(obj, *phrases)
      phrases.each do |phrase|
        phrase.scan(/\w[-\w']+/) do |word|   # extract each word
          word.downcase!
          @index[word] = [] if @index[word].nil?
          @index[word].push(obj)
        end
      end
    end
    def lookup(word)
      @index[word.downcase]
    end
  end
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
songlist = SongList.new

class JukeboxButton < Button

  def initialize(label, &action)
    super(label)
    @action = action
  end

  def button_pressed
    @action.call(self)  
  end

end

start_button = JukeboxButton.new("Start") { songlist.start }
pause_button = JukeboxButton.new("Pause") { songlist.pause }

# Sample code from Programing Ruby, page 33
class Song
  include Comparable
  @@plays = 0
  attr_reader :name, :artist, :duration
  attr_writer :duration
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
    @plays    = 0
  end
  def to_s
    "Song: #@name--#@artist (#@duration)"
  end
  def name
    @name
  end
  def artist
    @artist
  end
  def duration
    @duration
  end
  def duration=(new_duration)
    @duration = new_duration
  end
  def duration_in_minutes
    @duration/60.0   # force floating point
  end
  def duration_in_minutes=(new_duration)
    @duration = (new_duration*60).to_i
  end
  def play
    @plays  += 1   # same as @plays = @plays + 1
    @@plays += 1
    "This  song: #@plays plays. Total #@@plays plays."
  end
  def record
    "Recording..."
  end
  def inspect
    self.to_s
  end
  def <=>(other)
    self.duration <=> other.duration
  end
end
  class SongList
    MAX_TIME = 5*60           #  5 minutes
    
    def SongList.is_too_long(song)
      return song.duration > MAX_TIME
    end
  end
  song1 = Song.new("Bicylops", "Fleck", 260)
  SongList.is_too_long(song1)
  song2 = Song.new("The Calling", "Santana", 468)
  SongList.is_too_long(song2)

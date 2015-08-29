# Sample code from Programing Ruby, page 396
  Note = Struct.new(:value)
  class Note
    def to_s
      value.to_s
    end
  end

  class Chord
    def initialize(arr)
      @arr = arr
    end

    def play
      @arr.join('-')
    end
  end
  c = Chord.new( [ Note.new("G"),
                   Note.new("Bb"),
                   Note.new("Db"),
                   Note.new("E") ] )

  File.open("posterity", "w+") do |f|
    Marshal.dump(c, f)
  end
 chord = nil
File.open("posterity") do |f|
  chord = Marshal.load(f)
end
  
chord.play

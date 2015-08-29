# Sample code from Programing Ruby, page 316
  class Song
    @@count = 0

    def initialize
      @@count += 1
    end
    def Song.get_count
      @@count
    end
  end

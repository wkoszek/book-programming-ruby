# Sample code from Programing Ruby, page 82
  class Song

    def [](from_time, to_time)
      result = Song.new(self.title + " [extract]",
                        self.artist,
                        to_time - from_time)
      result.set_start_time(from_time)

      result
    end

  end

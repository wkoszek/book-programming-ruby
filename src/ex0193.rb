# Sample code from Programing Ruby, page 81
  class Song
   TradJazz, Jazz, Other = 1, 2, 3
   attr :written
   def mp3_type() @written = 1; 1 end
  end
  class Date
    def initialize(a,b,c) end
    def coerce(i) [1,1] end
  end
  class Rating
    SkipThisOne, CouldDoBetter, Rave = 1, 2, 3
  end
  class MP3
    Jazz = 1
  end
  song = Song.new
  votes_cast = 0
  song_type = if song.mp3_type == MP3::Jazz
                if song.written < Date.new(1935, 1, 1)
                  Song::TradJazz
                else
                  Song::Jazz
                end
              else
                Song::Other
              end

   rating = case votes_cast
            when 0...10    then Rating::SkipThisOne
            when 10...50   then Rating::CouldDoBetter
            else                Rating::Rave
            end

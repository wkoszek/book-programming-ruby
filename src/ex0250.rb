# Sample code from Programing Ruby, page 97
  class Periods
    def each
      yield "Classical"
      yield "Jazz"
      yield "Rock"
    end
  end

  periods = Periods.new
  for genre in periods
    print genre, " "
  end
puts

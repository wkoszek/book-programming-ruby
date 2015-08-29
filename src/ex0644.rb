# Sample code from Programing Ruby, page 373
  class ExampleDate
    def initialize(day_number)
      @day_number = day_number
    end
    
    def as_day_number
      @day_number
    end
    
    def as_string
      unless @string
        # complex calculation
        @string = result
      end
      @string
    end
    
    def as_YMD
      unless @ymd
        # another calculation
        @ymd = [ y, m, d ]
      end
      @ymd
    end
    # ...
  end

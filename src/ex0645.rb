# Sample code from Programing Ruby, page 373
  class ExampleDate
  def ExampleDate.once(*a)
  end
    def as_day_number
      @day_number
    end
    
    def as_string
      # complex calculation
    end
    
    def as_YMD
      # another calculation
      [ y, m, d ]
    end

    once :as_string, :as_YMD
  end

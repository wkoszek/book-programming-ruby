# Sample code from Programing Ruby, page 644
      require 'date'
      
      d = Date.new(2000, 3, 31)
      [d.year, d.yday, d.wday]
      [d.month, d.mday]
      [d.cwyear, d.cweek, d.cwday]
      [d.jd, d.mjd]
      d1 = Date.commercial(2000, 13, 7)
      d1.to_s
      [d1.cwday, d1.wday]

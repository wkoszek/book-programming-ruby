# Sample code from Programing Ruby, page 696
    require 'profile'
    def ackerman(m, n)
      if m == 0 then  n+1
      elsif n == 0 and m > 0 then ackerman(m-1, 1)
      else ackerman(m-1, ackerman(m, n-1))
      end
    end
    ackerman(3, 3)

# Sample code from Programing Ruby, page 92
 year = 0
leap = case
       when year % 400 == 0: true
       when year % 100 == 0: false
       else year % 4   == 0
       end

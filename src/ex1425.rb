# Sample code from Programing Ruby, page 644
       require 'date'

       now = DateTime.now
       year = now.year
       year += 1 if now.month == 12 && now.day > 25
       xmas = DateTime.new(year, 12, 25)

       diff = xmas - now

       puts "It's #{diff.to_i} days to Christmas"

       h,m,s,frac = Date.day_fraction_to_time(diff)
       s += frac.to_f

       puts "That's #{h} hours, #{m} minutes, #{s} seconds"
       puts "Christmas falls on a #{xmas.strftime('%A')}"

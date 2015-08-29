# Sample code from Programing Ruby, page 505
         open("|-") do |f|
           if f.nil?
             puts "in Child"
           else
             puts "Got: #{f.gets}"
           end
         end

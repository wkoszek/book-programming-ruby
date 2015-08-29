# Sample code from Programing Ruby, page 678
      require 'net/http'
      
      Net::HTTP.start('www.pragmaticprogrammer.com') do |http|
        response = http.get('/index.html')
        puts "Code = #{response.code}"
        puts "Message = #{response.message}"
        response.each {|key, val| printf "%-14s = %-40.40s\n", key, val }
        p response.body[400, 55]
      end

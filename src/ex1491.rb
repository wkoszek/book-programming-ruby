# Sample code from Programing Ruby, page 678
      require 'net/http'
      
      response = Net::HTTP.get_response('www.pragmaticprogrammer.com',
                                        '/index.html')
      puts "Code = #{response.code}"
      puts "Message = #{response.message}"
      response.each {|key, val| printf "%-14s = %-40.40s\n", key, val }
      p response.body[400, 55]

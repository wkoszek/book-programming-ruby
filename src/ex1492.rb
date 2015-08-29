# Sample code from Programing Ruby, page 679
     require 'net/http'
     require 'uri'
 
     def fetch(uri_str, limit=10)
       fail 'http redirect too deep' if limit.zero?
       puts "Trying: #{uri_str}"
       response = Net::HTTP.get_response(URI.parse(uri_str))
       case response
       when Net::HTTPSuccess
         response
       when Net::HTTPRedirection
         fetch(response['location'], limit-1)
       else
         response.error!
       end
     end
 
     response = fetch('http://www.ruby-lang.org')
     p response.body[500, 55]

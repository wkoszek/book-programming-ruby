# Sample code from Programing Ruby, page 125
require 'net/http'

h = Net::HTTP.new('www.pragmaticprogrammer.com', 80)

response = h.get('/index.html', nil)

if response.message == "OK"
  puts response.body.scan(/<img src="(.*?)"/m).uniq 
end

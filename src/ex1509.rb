# Sample code from Programing Ruby, page 688
require 'net/https'

USER = "xxx"
PW   = "yyy"

site = Net::HTTP.new("www.securestuff.com", 443)
site.use_ssl = true 
response = site.get2("/cgi-bin/cokerecipe.cgi",
                     'Authorization' => 'Basic ' + 
                     ["#{USER}:#{PW}"].pack('m').strip)

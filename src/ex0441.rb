# Sample code from Programing Ruby, page 231
#!/usr/bin/ruby

COOKIE_NAME = 'chocolate chip'

require 'cgi'

cgi = CGI.new

values = cgi.cookies[COOKIE_NAME]

if values.empty?
  msg = "It looks as if you haven't visited recently"
else
  msg = "You last visited #{values[0]}"
end

cookie = CGI::Cookie.new(COOKIE_NAME, Time.now.to_s)

cookie.expires = Time.now + 30*24*3600 # 30 days

cgi.out("cookie" => cookie ) { msg }


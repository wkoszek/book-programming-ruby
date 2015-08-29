# Sample code from Programing Ruby, page 233
require 'cgi'
require 'cgi/session'

cgi = CGI.new("html3")
sess = CGI::Session.new(cgi,
                        "session_key" => "rubyweb",
                        "prefix" => "web-session."
                        )

if sess['lastaccess']
  msg = "You were last here #{sess['lastaccess']}."
else
  msg = "Looks like you haven't been here for a while"
end

count = (sess["accesscount"] || 0).to_i
count += 1

msg << "<p>Number of visits: #{count}"

sess["accesscount"] = count
sess["lastaccess"]  = Time.now.to_s
sess.close

cgi.out { 
  cgi.html { 
    cgi.body {
      msg 
    }
  }
}


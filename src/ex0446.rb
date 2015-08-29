# Sample code from Programing Ruby, page 235
#!/usr/bin/ruby

require 'webrick'
include WEBrick

s = HTTPServer.new( :Port => 2000 )

class HelloServlet < HTTPServlet::AbstractServlet
  def do_GET(req, res)
    res['Content-Type'] = "text/html"
    res.body = %{
      <html><body>
        Hello. You're calling from a #{req['User-Agent']}
       <p>
        I see parameters: #{req.query.keys.join(', ')}
      </body></html>
    }
  end
end

s.mount("/hello", HelloServlet)

trap("INT"){ s.shutdown }

s.start

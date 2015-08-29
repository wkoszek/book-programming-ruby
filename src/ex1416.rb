# Sample code from Programing Ruby, page 639
         require 'cgi'
         cgi = CGI.new("html4")
         cookie = cgi.cookies['mycookie']

         cgi.out('cookie' => cookie) do
           cgi.head + cgi.body { "Flavor: " + cookie[0] }
         end

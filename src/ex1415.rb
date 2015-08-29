# Sample code from Programing Ruby, page 639
        require 'cgi'
        cgi = CGI.new("html4")
        cookie = CGI::Cookie.new('name' => 'mycookie',
                                 'value' => 'chocolate chip',
                                 'expires' => Time.now + 3600)

        cgi.out('cookie' => cookie) do
          cgi.head + cgi.body { "Cookie stored" }
        end

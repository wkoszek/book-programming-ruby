# Sample code from Programing Ruby, page 638
        require 'cgi'
          ARGV.replace %w{ fred=10 barney=cat } #!sh!
        c = CGI.new
        c['fred']
        c.keys
        c.params

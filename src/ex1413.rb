# Sample code from Programing Ruby, page 638
        require 'cgi'
          ARGV.replace %w{ name=fred name=wilma name=barney } #!sh!
        c = CGI.new
        c['name']
        c.params['name']
        c.keys
        c.params

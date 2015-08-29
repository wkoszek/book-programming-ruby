# Sample code from Programing Ruby, page 638
         ARGV.replace %w{ fred=10 barney=cat }
         ENV['AUTH_TYPE'] = "basic"
         ENV['HTTP_USER_AGENT'] = "Mozscape Explorari V5.6"
         require 'cgi'
         c = CGI.new
         c.auth_type
         c.user_agent

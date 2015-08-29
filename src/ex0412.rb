# Sample code from Programing Ruby, page 209
begin
require 'rubygems'
require_gem 'BlueCloth', '>= 0.0.5'
rescue LoadError => e
e.backtrace[0].sub!(%{/Users/dave/ruby1.8/}, "/usr/local/")
e.backtrace[0].sub!(%{30:}, "30:\n          ")
raise
end

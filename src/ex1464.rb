# Sample code from Programing Ruby, page 665
require 'iconv'

conv = Iconv.new("UTF-16", "ISO-8859-1")
result = conv.iconv("hello")
result << conv.iconv(nil) #!sh!
result

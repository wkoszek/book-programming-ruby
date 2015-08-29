# Sample code from Programing Ruby, page 665
require 'iconv'
result = Iconv.conv("UTF-16", "ISO-8859-1", "hello")
result

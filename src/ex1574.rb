# Sample code from Programing Ruby, page 731
require 'uri'

uri = URI.parse("http://pragprog.com:1234/mypage.cgi?q=ruby")
uri.class
uri.scheme
uri.host
uri.port
uri.path
uri.query

uri = URI.parse("mailto:ruby@pragprog.com?Subject=help&body=info")
uri.class
uri.scheme
uri.to
uri.headers

uri = URI.parse("ftp://dave@anon.com:/pub/ruby;type=i")
uri.class
uri.scheme
uri.host
uri.port
uri.path
uri.typecode

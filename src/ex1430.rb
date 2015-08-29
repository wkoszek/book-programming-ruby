# Sample code from Programing Ruby, page 647
require 'digest/md5'
require 'digest/sha1'

for hash_class in [ Digest::MD5, Digest::SHA1 ]

  puts "Using #{hash_class.name}"

  # Calculate directly
  puts hash_class.hexdigest("hello world")

  # Or by accumulating
  digest = hash_class.new
  digest << "hello" #!sh!
  digest << " "     #!sh!
  digest << "world" #!sh!
  puts digest.hexdigest
  puts
end

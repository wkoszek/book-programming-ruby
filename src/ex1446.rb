# Sample code from Programing Ruby, page 654
require 'etc'

users = []
Etc.passwd {|passwd| users << passwd.name } #!sh!
users.join(", ")

groups = []
Etc.group {|group| groups << group.name } #!sh!
groups.join(", ")

# Sample code from Programing Ruby, page 654
require 'etc'

name = Etc.getlogin
info = Etc.getpwnam(name)
info.name
info.uid
info.dir
info.shell

group = Etc.getgrgid(info.gid)
group.name

# Sample code from Programing Ruby, page 656
require 'fcntl'

Fcntl.constants.sort.each do |name|
  printf "%10s: %04x\n", name, Fcntl.const_get(name)
end

# Sample code from Programing Ruby, page 694
require 'pp'

a = "string"
b = [ a ]
c = [ b, b ]
PP.sharing_detection = false
pp c

PP.sharing_detection = true
pp c

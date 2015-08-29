# Sample code from Programing Ruby, page 245
#require 'tk'
#b = TkButton.new do
#  text     "OK"
#  justify  "left"
#  border   5
#end
b = "cheat"
def b.cget(arg)
case arg
when 'text': 'OK'
when 'justify': 'left'
when 'border': 5
end
end
b.cget('text')
b.cget('justify')
b.cget('border')

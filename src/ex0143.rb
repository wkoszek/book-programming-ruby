# Sample code from Programing Ruby, page 66
class String
 def inspect
  to_s
 end
end
def show_regexp(a, re)
  if a =~ re
    "#{$`}<<#{$&}>>#{$'}"
  else
    "no match"
  end
end
show_regexp("this is\nthe time", /^the/)
show_regexp("this is\nthe time", /is$/)
show_regexp("this is\nthe time", /\Athis/)
show_regexp("this is\nthe time", /\Athe/)

# Sample code from Programing Ruby, page 67
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
a = 'It costs $12.'
show_regexp(a, /c.s/)
show_regexp(a, /./)
show_regexp(a, /\./)

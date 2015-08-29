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
a = 'see [Design Patterns-page 123]'
show_regexp(a, /[]]/)
show_regexp(a, /[-]/)
show_regexp(a, /[^a-z]/)
show_regexp(a, /[^a-z\s]/)

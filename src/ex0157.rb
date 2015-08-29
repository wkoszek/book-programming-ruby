# Sample code from Programing Ruby, page 70
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
  show_regexp('He said "Hello"', /(["']).*?\1/)
  show_regexp("He said 'Hello'", /(["']).*?\1/)

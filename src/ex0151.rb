# Sample code from Programing Ruby, page 69
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
a = "red ball blue sky"
show_regexp(a, /d|e/)
show_regexp(a, /al|lu/)
show_regexp(a, /red ball|angry sky/)

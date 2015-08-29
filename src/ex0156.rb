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
  # match duplicated letter
  show_regexp('He said "Hello"', /(\w)\1/)
  # match duplicated substrings
  show_regexp('Mississippi', /(\w+)\1/)

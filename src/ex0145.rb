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
show_regexp('Price $12.', /[aeiou]/)
show_regexp('Price $12.', /[\s]/)
show_regexp('Price $12.', /[[:digit:]]/)
show_regexp('Price $12.', /[[:space:]]/)
show_regexp('Price $12.', /[[:punct:]aeiou]/)

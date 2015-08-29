# Sample code from Programing Ruby, page 65
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

show_regexp('very interesting', /t/)
show_regexp('Fats Waller', /a/)
show_regexp('Fats Waller', /ll/)
show_regexp('Fats Waller', /z/)

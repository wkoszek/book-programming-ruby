# Sample code from Programing Ruby, page 71
def mixed_case(name)
  name.gsub(/\b\w/) {|first| first.upcase }
end

mixed_case("fats waller")
mixed_case("louis armstrong")
mixed_case("strength in numbers")

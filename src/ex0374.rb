# Sample code from Programing Ruby, page 180
def ri(*names)
  system(%{ri #{names.map {|name| name.to_s}.join(" ")}})
end

# Sample code from Programing Ruby, page 389
unbound_length = String.instance_method(:length)
class String
  def length
    99
  end
end
str = "cat"
str.length
bound_length = unbound_length.bind(str)
bound_length.call

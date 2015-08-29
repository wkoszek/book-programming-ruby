# Sample code from Programing Ruby, page 390
def get_a_binding
  val = 123
  binding
end

val = "cat"

the_binding = get_a_binding
eval("val", the_binding)
eval("val")

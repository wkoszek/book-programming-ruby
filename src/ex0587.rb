# Sample code from Programing Ruby, page 336
  class Fixnum
    alias plus +
  end
  1.plus(3)

  alias $prematch $`  #!sh!
  "string" =~ /i/
  $prematch

  alias :cmd :`       #!sh!
  cmd "date"

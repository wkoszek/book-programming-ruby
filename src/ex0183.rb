# Sample code from Programing Ruby, page 78
  def meth_three
   100.times do |num|
     square = num*num
     return num, square if square > 1000
   end
  end
  meth_three

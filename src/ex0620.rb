# Sample code from Programing Ruby, page 357
class OneTwo
  def to_ary
    [ 1, 2 ]
  end
end

ot = OneTwo.new
a, b = ot
puts "a = #{a}, b = #{b}"
printf("%d -- %d\n", *ot)

# Sample code from Programing Ruby, page 358
class OneTwo
  def to_str
    "one-two"
  end
end

ot = OneTwo.new

puts("count: " + ot)
File.open(ot) rescue puts $!.message

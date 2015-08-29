# Sample code from Programing Ruby, page 358
class OneTwo
  def to_str
    "one-two"
  end
end
ot = OneTwo.new
File.join("/user", ot)

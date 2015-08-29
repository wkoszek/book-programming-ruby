# Sample code from Programing Ruby, page 357
class OneTwo
  def to_proc
    proc { "one-two" }
  end
end

def silly
  yield
end
ot = OneTwo.new
silly(&ot)

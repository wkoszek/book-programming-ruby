# Sample code from Programing Ruby, page 160
class Incorrect
  attr_reader :answer
  def initialize
    @anwser = 42      #<<< spelling error
  end
end

ultimate = Incorrect.new
ultimate.answer

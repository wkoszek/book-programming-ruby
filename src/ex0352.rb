# Sample code from Programing Ruby, page 159
class Incorrect
  attr_reader :answer
  def initialise      # < < < spelling error
    @answer = 42
  end
end

ultimate = Incorrect.new
ultimate.answer

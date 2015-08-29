# Sample code from Programing Ruby, page 52
class Button
  def initialize(label)
  end
end
class StartButton < Button
  def initialize
    super("Start")       # invoke Button's initialize
  end
  def button_pressed
    # do start actions...
  end
end

start_button = StartButton.new

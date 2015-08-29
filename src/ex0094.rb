# Sample code from Programing Ruby, page 47
  def three_times
    yield
    yield
    yield
  end
  three_times { puts "Hello" }

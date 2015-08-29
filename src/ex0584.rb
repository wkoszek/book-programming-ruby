# Sample code from Programing Ruby, page 334
class Array
  def to_s
    inspect
  end
end
class Hash
  def to_s
    inspect
  end
end

  a_proc   = lambda { 99 }
  an_array = [ 98, 97, 96 ]
  
  def block
    yield
  end
  block { }
  block do
        end
  block(&a_proc)

  def all(a, b, c, *d, &e)
    puts "a = #{a.inspect}"
    puts "b = #{b.inspect}"
    puts "c = #{c.inspect}"
    puts "d = #{d.inspect}"
    puts "block = #{yield(e).inspect}"
  end

  all('test', 1 => 'cat', 2 => 'dog', *an_array, &a_proc)

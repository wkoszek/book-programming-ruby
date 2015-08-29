# Sample code from Programing Ruby, page 342
class Holder
  CONST = 100
  def call_block
    a = 101
    @a = 102
    @@a = 103
    yield
  end
end

class Creator
  CONST = 0
  def create_block
    a = 1
    @a = 2
    @@a = 3
    proc do
      puts "a = #{a}"
      puts "@a = #@a"
      puts "@@a = #@@a"
      puts yield
    end
  end
end

block = Creator.new.create_block { "original" }
Holder.new.call_block(&block)

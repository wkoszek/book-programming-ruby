# Sample code from Programing Ruby, page 76
  class TaxCalculator
    def initialize(name, &block)
      @name, @block = name, block
    end
    def get_tax(amount)
      "#@name on #{amount} = #{ @block.call(amount) }"
    end
  end

  tc = TaxCalculator.new("Sales tax") {|amt| amt * 0.075 }

  tc.get_tax(100)
  tc.get_tax(250)

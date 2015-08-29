# Sample code from Programing Ruby, page 37
  class Account
    attr_reader :balance       # accessor method 'balance'

    protected :balance         # and make it protected

    def greater_balance_than(other)
      return @balance > other.balance
    end
  end

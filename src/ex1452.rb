# Sample code from Programing Ruby, page 659
     require 'forwardable'

     class SymbolTable
       extend Forwardable
       def_delegator(:@hash, :[],  :lookup)
       def_delegator(:@hash, :[]=, :add)
       def_delegators(:@hash, :size, :has_key?)
       def initialize
         @hash = Hash.new
       end
     end

     st = SymbolTable.new
     st.add('cat', 'feline animal')
     st.add('dog', 'canine animal')
     st.add('cow', 'bovine animal')

     st.has_key?('cow')
     st.lookup('dog')

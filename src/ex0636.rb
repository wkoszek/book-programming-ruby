# Sample code from Programing Ruby, page 369
  module Humor
    def tickle
      "hee, hee!"
    end
  end
  class Grouchy
    include Humor
    extend  Humor
  end

  Grouchy.tickle
  a = Grouchy.new
  a.tickle

# Sample code from Programing Ruby, page 368
  module Humor
    def tickle
      "hee, hee!"
    end
  end

  a = "Grouchy"
  a.extend Humor   #!sh!
  a.tickle

# Sample code from Programing Ruby, page 652
require 'erb'
input = %{\
<% high.downto(low) do |n|   # set high, low externally %>
  <%= n %> green bottles, hanging on the wall
  <%= n %> green bottles, hanging on the wall
  And if one green bottle should accidentally fall
  There'd be <%= n-1 %> green bottles, hanging on the wall
         . . .
<% end %> 
}
high,low = 10, 8
low = 10
#erb = ERB.new(input)
erb = ERB.new(input, 0, ">")
erb.run

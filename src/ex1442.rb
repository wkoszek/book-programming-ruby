# Sample code from Programing Ruby, page 652
require 'erb'
str = %{\
% 2.times do |i|
  This is line <%= i %>
%end
%% done}
ERB.new(str, 0, '%').run

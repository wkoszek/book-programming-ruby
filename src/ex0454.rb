# Sample code from Programing Ruby, page 241
require 'tk'
root = TkRoot.new { title "Ex1" }
TkLabel.new(root) do
  text  'Hello, World!'
  pack  { padx 15 ; pady 15; side 'left' }
end
Tk.mainloop

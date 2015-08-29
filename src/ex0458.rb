# Sample code from Programing Ruby, page 243
require 'tk'

packing = { 'padx'=>5, 'pady'=>5, 'side' => 'left' }

checked = TkVariable.new

def checked.status
  value == "1" ? "Yes" : "No"
end

status = TkLabel.new do
  text checked.status
  pack(packing)
end

TkCheckButton.new  do
  variable checked
  pack(packing)
end

TkButton.new do
  text "Show status"
  command { status.text(checked.status) }
  pack(packing)
end

Tk.mainloop

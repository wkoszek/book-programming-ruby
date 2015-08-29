# Sample code from Programing Ruby, page 244
require 'tk'
root = TkRoot.new { title "Ex3" }

top = TkFrame.new(root) { relief 'raised'; border 5 }

lbl = TkLabel.new(top) do
  justify 'center' 
  text    'Hello, World!'
  pack('padx'=>5, 'pady'=>5, 'side' => 'top') 
end

TkButton.new(top) do
  text "Ok"
  command { exit }
  pack('side'=>'left', 'padx'=>10, 'pady'=>10)
end

TkButton.new(top) do
  text "Cancel"
  command { lbl.configure('text'=>"Goodbye, Cruel World!") }
  pack('side'=>'right', 'padx'=>10, 'pady'=>10)
end

top.pack('fill'=>'both', 'side' =>'top')
Tk.mainloop

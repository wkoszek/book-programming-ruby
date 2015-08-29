# Sample code from Programing Ruby, page 246
require 'tk'

image1 = TkPhotoImage.new { file "img1.gif" }
image2 = TkPhotoImage.new { file "img2.gif" }

b = TkButton.new(@root) do
  image    image1 
  command  { exit }
  pack
end

b.bind("Enter") { b.configure('image'=>image2) }
b.bind("Leave") { b.configure('image'=>image1) }

Tk.mainloop

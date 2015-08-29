# Sample code from Programing Ruby, page 259
require 'dl'

User32 = DL.dlopen("user32")

MB_OKCANCEL = 1

message_box = User32['MessageBoxA', 'ILSSI']
r, rs = message_box.call(0, 'OK?', 'Please Confirm', MB_OKCANCEL)

case r
when 1
  print("OK!\n")
when 2
  print("Cancel!\n")
end

# Sample code from Programing Ruby, page 285
  require 'mkmf'

  if have_library("jpeg","jpeg_mem_init") and
     find_library("X11", "XOpenDisplay", 
                  "/usr/X11/lib",        # list of directories
                  "/usr/X11R6/lib",      # to check
                  "/usr/openwin/lib")    # for library
  then
      create_makefile("XThing")
  else
      puts "No X/JPEG support available"
  end

# Sample code from Programing Ruby, page 727
  require 'tmpdir'

  Dir.tmpdir

  ENV['TMPDIR'] = "/wibble"   # doesn't exist
  ENV['TMP']    = "/sbin"     # not writable
  ENV['TEMP']   = "/Users/dave/tmp" # just right

  Dir.tmpdir

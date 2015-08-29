# Sample code from Programing Ruby, page 286
  require 'mkmf'
  dir_config('cdjukebox')
  have_library('cdjb', 'CDPlayerNew')
  have_header('hp_mp3.h')
  create_makefile("CDJukeBox")

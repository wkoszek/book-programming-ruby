# Sample code from Programing Ruby, page 286
  #if defined(HAVE_HP_MP3_H)
  #  include <hp_mp3.h>
  #endif
  
  #if defined(HAVE_SETPRIORITY)
    err = setpriority(PRIOR_PROCESS, 0, -10)
  #endif

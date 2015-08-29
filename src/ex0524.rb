# Sample code from Programing Ruby, page 288
  #if defined(NT)
    NtInitialize(&argc, &argv);
  #endif
  #if defined(__MACOS__) && defined(__MWERKS__)
    argc = ccommand(&argv);
  #endif

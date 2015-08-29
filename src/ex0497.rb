# Sample code from Programing Ruby, page 272
  CDJukebox *jukebox;
  VALUE obj;

  // Vendor library creates the Jukebox
  jukebox = new_jukebox();

  // then we wrap it inside a Ruby CDPlayer object
  obj = Data_Wrap_Struct(klass, 0, cd_free, jukebox);

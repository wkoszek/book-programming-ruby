# Sample code from Programing Ruby, page 273
static VALUE cd_alloc(VALUE klass) {
  CDJukebox *jukebox;
  VALUE obj;

  // Vendor library creates the Jukebox
  jukebox = new_jukebox();

  // then we wrap it inside a Ruby CDPlayer object
  obj = Data_Wrap_Struct(klass, 0, cd_free, jukebox);

  return obj;
}

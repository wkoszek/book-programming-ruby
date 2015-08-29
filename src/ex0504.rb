# Sample code from Programing Ruby, page 276
static VALUE cd_init_copy(VALUE copy, VALUE orig) {

  CDJukebox *orig_jb;
  CDJukebox *copy_jb;

  if (copy == orig)
    return copy;

  // we can initialize the copy from other CDPlayers
  // or their subclasses only
  
  if (TYPE(orig) != T_DATA ||
      RDATA(orig)->dfree != (RUBY_DATA_FUNC)cd_free) {
    rb_raise(rb_eTypeError, "wrong argument type");
  }

  // copy all the fields from the original
  // object's CDJukebox structure to the
  // new object

  Data_Get_Struct(orig, CDJukebox, orig_jb);
  Data_Get_Struct(copy, CDJukebox, copy_jb);
  MEMCPY(copy_jb, orig_jb, CDJukebox, 1);

  return copy;
}

# Sample code from Programing Ruby, page 197
/*
 * call-seq:
 *   cipher.salt = number
 *   cipher.salt = "string"
 *
 * Sets the salt of this cipher to either a binary +number+ or
 * bits in +string+.
 */

static VALUE
salt_set(cipher, salt)
...

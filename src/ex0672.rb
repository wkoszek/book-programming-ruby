# Sample code from Programing Ruby, page 389
  trane = "John Coltrane".method(:length)
  miles = "Miles Davis".method("sub")

  trane.call
  miles.call(/iles/, '.')

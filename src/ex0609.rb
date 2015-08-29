# Sample code from Programing Ruby, page 351
public interface Customer {
  long  getID();
  Calendar getDateOfLastContact();
  // ...
}

public class Person
  implements Customer {

  public long getID() { ... }
  public Calendar getDateOfLastContact() { ... }
  // ...
}

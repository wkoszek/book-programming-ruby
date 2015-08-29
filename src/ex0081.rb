# Sample code from Programing Ruby, page 38
  person1 = "Tim"
  person2 = person1
  person1.freeze       # prevent modifications to the object
  person2[0] = "J"

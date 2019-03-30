# Defining a class
class Student
  constructor: (@name)->

# instantiating a class by passing a string to constructor
student = new Student("akashjeez");
console.log "the name of the student is : "+student.name
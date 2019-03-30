# Defining a class
class Student
  name = "akashjeez"
  age = 25
  message: ->
    "Hello "+name+" how are you" 

# instantiating a class by passing a string to constructor
student = new Student();
console.log student.message()

# static properties example
class Student1
  @message:(name) ->
    "Hello "+name+" how are you"

console.log Student1.message("jeez")
# Defining a class
class Add
   constructor:(@a,@b) ->
   
   addition:=>
     console.log "Sum of the two numbers is :"+(@a+@b) 

class Mul extends Add
   multiplication:->
     console.log "Product of the two numbers is :"+(@a*@b)

mul = new Mul(10,20)
mul.addition()
mul.multiplication()


# dynamic classes

class Animal
  constructor: (@name) ->

class Parrot extends Animal

Animal::rip = true

parrot = new Parrot("Macaw")
console.log "This parrot is no more" if parrot.rip

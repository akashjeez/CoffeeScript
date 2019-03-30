# defining a function
# greet = -> "This is an example of a function"

# Multi-line Functions
greet = -> 
	console.log "This is an example of a function"

greet() # Invoking a Function

# Functions with Arguments
add =(a,b) ->
	c=a+b
	console.log "Sum of the two numbers is : "+c

add(4,5)

# Default Arguments
add =(a = 1, b = 2) ->
	c=a+b
	console.log "Sum of the two numbers is "+c

add(10,20)
add() #Calling the function with default arguments
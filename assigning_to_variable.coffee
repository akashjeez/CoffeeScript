my_function =->
   student = ['akashjeez', 'Mohammed', 'John']
   
   # Assigning comprehension to a variable
   names = (x for x in student )
   console.log "The contents of the variable names are : "+names
   
   # Returning the comprehension
   return x for x in student
console.log "The value returned by the function is "+my_function() 
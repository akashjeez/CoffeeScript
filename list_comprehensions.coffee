students =[  
    name: "akashjeez" 
    age: 25
    phone: 8939271954 
  ,  
    name: "steve" 
    age: 55
    phone: 9800000000 
  ,  
    name: "john" 
    age: 40
    phone: 9800000000   
 ]  
 
names = (student.name for student in students)
ages = (student.age for student in students)
phone_numbers = (student.phone for student in students)

console.log names
console.log ages
console.log phone_numbers

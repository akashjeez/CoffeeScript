# Sample JSON Documents
doc1 = {name: 'Ram', age: 26, city: 'Hyderabad'}
doc2 = {name: 'Rahim', age: 27, city: 'Banglore'}
doc3 = {name: 'Robert', age: 28, city: 'Mumbai'}

# Requiring the Mongodb package
mongo = require 'mongodb'

# Creating a MongoClient object
MongoClient = mongo.MongoClient

# Preparing the URL
url = 'mongodb://localhost:27017/testdb'

# Connecting to the server
MongoClient.connect url, (err, db1) ->
  if err
    console.log 'Unable to connect . Error:', err
  else
    console.log 'Connection established to', url  
  #Creating collection
  db = db1.db('testdb')
  col = db.collection('My_collection')
	
  #Inserting documents
  col.insert [doc1,doc2,doc3], (err, result) ->
    if err
      console.log err
    else
      console.log "Documents inserted successfully"
    #Close connection
    db1.close()
    return
  return
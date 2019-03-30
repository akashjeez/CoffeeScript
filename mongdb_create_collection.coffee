#Requiring the Mongodb package
mongo = require 'mongodb'

#Creating a MongoClient object
MongoClient = mongo.MongoClient

#Preparing the URL
url = 'mongodb://localhost:27017/testdb'

#Connecting to the server
MongoClient.connect url, (err, db1) ->
  if err
    console.log 'Unable to connect . Error:', err
  else
    console.log 'Connection established to', url
	
    #Create collection
    db = db1.db("testdb")
    col = db.createCollection('My_collection')
    console.log "Collection created successfully."
	
    #Close connection
    db1.close()
  return
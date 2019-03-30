# Requiring the Mongodb package
mongo = require 'mongodb'

# Creating a MongoClient object
MongoClient = mongo.MongoClient

# Preparing the URL
url = 'mongodb://localhost:27017/testdb'

# Connecting to the server
MongoClient.connect url, (err, db) ->
  if err
    console.log 'Unable to connect . Error:', err
  else
    console.log 'Connection established to', url
    #Close connection
    db.close()
  return
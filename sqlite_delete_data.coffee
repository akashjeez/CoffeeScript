#Creating sqlite3 package
sqlite3 = require('sqlite3').verbose()

#Creating a Database instance
db = new (sqlite3.Database)('test.db')
console.log "Successfully connected"

# delete data from table
db.serialize ->
  #Deleting data
  stmt = db.prepare('DELETE FROM STUDENT WHERE name = ?')
  stmt.run 'Ram'
  console.log "Record deleted"
  stmt.finalize()

  #Retrieving data after delete operation
  console.log "The contents of the table STUDENT after delete operation are ::"
  db.each 'SELECT rowid AS id, name, city FROM STUDENT', (err, row) ->
    console.log row.id + ': ' +row.name+', '+ row.city
    return
  return
db.close()
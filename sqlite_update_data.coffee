# Creating sqlite3 package
sqlite3 = require('sqlite3').verbose()

# Creating a Database instance
db = new (sqlite3.Database)('test.db')
console.log "Successfully connected"

# update data
db.serialize ->
  #Updating data
  stmt = db.prepare('UPDATE STUDENT SET city = ? where name = ?')
  stmt.run 'Delhi','Ram'
  console.log "Table updated"
  stmt.finalize()

  #Retrieving data after update operation
  console.log "The contents of the table STUDENT after update operation are ::"
  db.each 'SELECT rowid AS id, name, city FROM STUDENT', (err, row) ->
    console.log row.id + ': ' +row.name+', '+ row.city
    return
  return
db.close()
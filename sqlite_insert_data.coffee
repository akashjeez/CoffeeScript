# Creating sqlite3 package
sqlite3 = require('sqlite3').verbose()

# Creating a Database instance
db = new (sqlite3.Database)('test.db')
console.log "Successfully connected"

# Inserting data into Table
db.serialize ->
  stmt = db.prepare('INSERT INTO STUDENT VALUES (?,?,?)')
  stmt.run 'Ram',24,'Hyderabad'
  stmt.run 'Robert',25,'Mumbai'
  stmt.run 'Rahim',26,'Bangalore'
  stmt.finalize()
  console.log "Data inserted successfully"
  return
db.close()

# Creating sqlite3 package
sqlite3 = require('sqlite3').verbose()

# Creating a Database instance
db = new (sqlite3.Database)('test.db')
console.log "Database opened successfully."

# Creating a Table
db.serialize ->
	db.run 'CREATE TABLE STUDENT (name TEXT, age INTEGER, city TEXT)'
	console.log "Table created successfully"

	stmt = db.prepare('INSERT INTO STUDENT VALUES (?,?,?)'
	stmt.run 'Akash',24,'bangalore'
	stmt.run 'Robert',40,'loas vegas'
	stmt.run 'Steve',44,'california'
	stmt.finalize()
	console.log "Data inserted successfully"
	
	return
db.close()


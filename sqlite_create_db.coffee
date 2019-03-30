# Creating sqlite3 package
sqlite3 = require('sqlite3').verbose()

# Creating a Database instance
db = new (sqlite3.Database)('test.db')
console.log "Database opened successfully."

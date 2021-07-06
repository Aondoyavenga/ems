import mysql from 'mysql'

const db = mysql.createConnection({
    host: 'localhost',
    database: 'accountingDB',
    user: 'root',
    password: ''
})

export default db
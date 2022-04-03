import mysql from 'mysql'

const db = mysql.createConnection({
    host: 'localhost',
    database: 'accountingDB3',
    user: 'root',
    password: ''
})

export default db
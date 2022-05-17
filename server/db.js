const mysql = require('mysql');

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "asdf1234",
    database: "beerdb"
});

db.connect((err) => {
    if(err){
        throw err;
    }
    console.log("MySQL Connected Succesfully");
})

module.exports = db;
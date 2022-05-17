const mysql = require('mysql');

const db = mysql.createConnection({
    host: "yourhost",
    user: "user",
    password: "password",
    database: "beerdb"
});

db.connect((err) => {
    if(err){
        throw err;
    }
    console.log("MySQL Connected Succesfully");
})

module.exports = db;

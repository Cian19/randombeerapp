const express = require("express");
const app = express();
const cors = require('cors');
const db = require('./db');

app.use(cors({
    origin: ["http://localhost:3000"],
    methods: ["GET", "POST"],
    credentials: true
}));
app.use(express.json());

app.listen(3001, () => {
    console.log("Node Js server running on port 3001");
})

app.get("/randombeer", (req, res) => {
    db.query("SELECT * FROM beers ORDER BY RAND ( ) LIMIT 1", (err, result) => {
        if (err) {
          console.log(err);
        } else {
          res.send(result);
        }
      });
})
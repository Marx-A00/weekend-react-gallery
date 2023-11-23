const express = require('express');
const pool = require('../modules/pool.js');
const router = express.Router();

// PUT /gallery/like/:id
router.put("/like/:id", (req, res) => {
  // code here
});

// GET /gallery
router.get("/", (req, res) => {
  const sqlText = `SELECT * FROM "gallery" ORDER BY "id";`;
  pool.query(sqlText)
  .then((result) => {
    console.log(`Got stuff back from the database`, result.rows);
    res.send(result.rows);
  })
  .catch((error) => {
    console.log(`Error making database query ${sqlText}`, error);
    res.sendStatus(500); // Good server always responds
  })

})

module.exports = router;

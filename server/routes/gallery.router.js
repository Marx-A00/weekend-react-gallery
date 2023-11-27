const express = require('express');
const pool = require('../modules/pool.js');
const router = express.Router();

// PUT /gallery/like/:id
router.put("/like/:id", (req, res) => {
  // code here
  let idOfImage = req.params.id
  const sqlText =
   `
   UPDATE "gallery"
   SET "likes" = "likes" + 1
   WHERE "id" = ($1);
   `

   const sqlValues= [idOfImage];

   pool.query(sqlText,sqlValues)
   .then((dbResult)=>{
    res.sendStatus(200);
   })
   .catch((dbError) =>{
    res.sendStatus(500);
   })
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


// get route for alternate gallery
// gotta fuck with url 


module.exports = router;

const express = require('express');
const cors = require('cors');
require('dotenv').config();
const db = require('./database')

const app = express();

app.use(express.json());
app.use(cors());

app.get('/db-test', (req, res) => {
  try{
    res.send({
      "message":"Connected Successfully"
    })
  } catch(e){
    console.log(e);
    res.status(500).json({
      "message":"Mysql connection failed"
    })
  }
});


const PORT = process.env.PORT || 3400;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/', (req,res) => {
    res.json({
        "message" : "Getting All Products"
    })
})

router.get('/:id', (req,res) => {
    res.json({
        "message": "Getting An Product by Id"
    })
})

module.exports = router;
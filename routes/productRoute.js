const express = require('express');
const router = express.Router();
const pool = require('../database');
const productService = require('../services/productService')

router.get('/', async (req,res) => {
    try{
        const products = await productService.getAllProducts();
        console.log(products);
        res.json(products);
    }catch(e){
        console.log(e);
        res.status(500).json({
            "message":e.message
        })
    }
})

router.get('/:id', async (req,res) => {
    try{
        const products = await productService.getProductsById(req.params.id);
        console.log(products);
        res.json(products);
    }catch(e){
        console.log(e);
        res.status(500).json({
            "message":e.message
        })
    }
})

module.exports = router;
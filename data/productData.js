const pool = require('../database');

async function getAllProducts() {
    const [rows] = await pool.query('select product_id, name, description, CAST(price AS DOUBLE) as price, image_url FROM products')
    console.log(rows);
    return rows;
}

async function getProductsById(id){
    const [rows] = await pool.query('select * from products WHERE id = ?', [id]);
    return rows[0];
}

module.exports = {
    getAllProducts,getProductsById
};
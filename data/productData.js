const pool = require('../database');

async function getAllProducts() {
    const [rows] = await pool.query('select product_id, name, description, CAST(price AS DOUBLE) as price, image_url FROM products')
}
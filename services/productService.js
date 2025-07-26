const productsData = require('../data/productData');

async function getAllProducts(){
    return await productsData.getAllProducts();
}

async function getProductsById(product_id){
    const product = await productsData.getProductsById(product_id);
    if(!product) {
        throw new Error('product not found');
    }

    return product;
}

module.exports = {
    getAllProducts,
    getProductsById
}
const productsData = require('../data/productData');

async function getAllProducts(){
    return await productsData.getAllProducts();
}

async function getProductsById(id){
    const product = await productsData.getProductsById(id);
    if(!product) {
        throw new Error('product not found');
    }

    return product;
}

module.exports = {
    getAllProducts,
    getProductsById
}
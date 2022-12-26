const express = require('express');
const route = express.Router()

const services = require('../services/render');
const controller = require('../controller/controller');
const controller_product = require('../controller/controller_product');

/**
 *  @description Root Route
 *  @method GET /
 */
route.get('/', services.homeRoutes);

/**
 *  @description add users
 *  @method GET /add-user
 */
route.get('/add-user', services.add_user)

/**
 *  @description for update user
 *  @method PUT /update-user
 */
route.get('/update-user', services.update_user)

/**
 *  @description Root Route
 *  @method GET /products
 */
route.get('/products', services.homeProducts);


// API FOR USER
route.post('/api/users', controller.create);
route.get('/api/users', controller.find);
route.put('/api/users/:id', controller.update);
route.delete('/api/users/:id', controller.delete);

// API FOR PRODUCTS
route.get('/api/products', controller_product.find);
route.delete('/api/products/:id', controller_product.delete);



module.exports = route
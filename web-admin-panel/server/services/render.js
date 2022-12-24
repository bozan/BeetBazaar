const axios = require('axios');

// USER
exports.homeRoutes = (req, res) => {
    // Make a get request to /api/users
    axios.get('http://localhost:3000/api/users')
        .then(function(response){
            res.render('index', { users : response.data });
        })
        .catch(err =>{
            res.send(err);
        })  
}

exports.add_user = (req, res) =>{
    res.render('add_user');
}

exports.update_user = (req, res) =>{
    axios.get('http://localhost:3000/api/users', { params : { id : req.query.id }})
        .then(function(userdata){
            res.render("update_user", { user : userdata.data})
        })
        .catch(err =>{
            res.send(err);
        })
}
// PRODUCT
exports.homeProducts = (req, res) => {
    // Make a get request to /api/products
    axios.get('http://localhost:3000/api/products')
        .then(function(response){
            res.render('index_product', { products : response.data });
        })
        .catch(err =>{
            res.send(err);
        })  
}
const express = require('express');
const authRouter = express.Router();
const auth = require('../middlewares/auth');
const User = require("../models/user");
const{ Product } = require("../models/product");

const bcryptjs = require('bcryptjs');
const jwt = require('jsonwebtoken');

//SIGN UP
authRouter.post("/api/signup", async (req, res) => {
    try{
        const  {name, email, password, address, phone}  = req.body;

        const existingUser = await User.findOne({email});
        if(existingUser){
            return res.status(400).json({msg: "User with same email already exists!"});
        }
        const hashedPassword = await bcryptjs.hash(password, 8);

        let user = new User({
            email,
            password: hashedPassword,
            name,
            address,
            phone,
        })
        user = await user.save();
        res.json(user);
        //get the data from client
        // post that data in database
        // return that data to the user
    } catch(e){
        res.status(500).json({error: e.message});
    }
});

//SIGN IN
//excersize: create a route for sign in

authRouter.post("/api/signin", async (req, res) => {
    try{
        const {email, password} = req.body;
        const user = await User.findOne({email});
        if(!user){
            return res
            .status(400)
            .json({ msg: "User with this email does not exist!"});
        }
        // compare the password hashes
        const isMatch  = await bcryptjs.compare(password, user.password);
        if(!isMatch){
            return res
            .status(400)
            .json({msg: "Incorrect password!"});
        }
        const token = jwt.sign({id: user._id}, "passwordKey");
        res.json({token, ...user._doc});
        // get the data from client
   
    } catch(e){
    res.status(500).json({error: e.message});
}
});


// token validation
authRouter.post("/tokenIsValid", async (req, res) => {
    try{
        const token = req.header('x-auth-token');
        if(!token) return res.json(false);
        const verified = jwt.verify(token, 'passwordKey');
        if(!verified) return res.json(false);

        const user = await User.findById(verified.id);
        if(!user) return res.json(false);
        return res.json(true);
    } catch(e){
    res.status(500).json({error: e.message});
}
});

// get user data
authRouter.get('/', auth, async (req, res) => {
    const user = await User.findById(req.user);
    res.json({...user._doc, token: req.token});
});

//add product
authRouter.post('/add-product', auth, async (req, res) => {
    try{
        const {name, description, images, quantity, price, category} = req.body;
        let product = new Product({
            name,
            description,
            images,
            quantity,
            price,
            category,
        });
        product = await product.save();
        const user = await User.findById(req.user);
        user.myProducts.push({ product, quantity: product.quantity });
        await user.save();
        res.json(product);
    } 
    catch(e){
        res.status(500).json({error: e.message});
    }
});

// get all products
// /get-products
authRouter.get('/get-products', auth, async (req, res) => {
    try {
        const products = await Product.find({});
        res.json(products);
    } catch (e) {
        res.status(500).json({error: e.message});
    }
})

// get my products
authRouter.get('/get-my-products', auth, async (req, res) => {
    try {
        let products = [];
        const user = await User.findById(req.user);
        for (let i = 0; i < user.myProducts.length; i++) {
            // product is already in myProducts, but compare two id objects, not strings
            products.push(user.myProducts[i].product);
        }
        res.json(products);
    } catch (e) {
        res.status(500).json({error: e.message});
    }
})

// Delete the product
authRouter.post('/delete-product', auth, async (req, res) => {
    try {
        const { id } = req.body;
        const user = await User.findById(req.user);
        for (let i = 0; i < user.myProducts.length; i++) {
            // product is already in myProducts, but compare two id objects, not strings
            if (user.myProducts[i].product._id.equals(id)) {
                user.myProducts.splice(i, 1);
                break;
            }
        }
        const fin = await Product.deleteOne({_id: id});
        await user.save();
        res.json(fin);
    } catch (e) {
        res.status(500).json({error: e.message});
    }
});

// Delete the product
authRouter.post('/delete-user', auth, async (req, res) => {
    try {
        const user = await User.findById(req.user);
        for (let i = 0; i < user.myProducts.length; i++) {
            const fin = await Product.findById(user.myProducts[i].product._id);
            await fin.deleteOne({_id: user.myProducts[i].product._id});
        }
        await User.deleteOne({_id: req.user});
        res.json(user);
    } catch (e) {
        res.status(500).json({error: e.message});
    }
});

module.exports = authRouter;
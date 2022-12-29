const e = require("express");
const express = require("express");
const userRouter = express.Router();
const auth = require("../middlewares/auth");
const { Product } = require("../models/product");
const User = require("../models/user");

//add product to favs
userRouter.post('/api/add-to-favs', auth, async (req, res) => {
    try {
        const { id } = req.body;
        const product = await Product.findById(id);
        let user = await User.findById(req.user); // user or user.id?

        for (let i = 0; i < user.favs.length; i++) {
            // check if product is already in favs, but compare two id objects, not strings
            if (user.favs[i].product._id.equals(product._id)) {
                return res
                .status(400)
                .json({msg: "Product already in favorites!"});
            }
        }
        user.favs.push({ product, quantity: 1 });
        user = await user.save();
        return res.json(user);
    }
    catch (e) {
        res.status(500).json({ error: e.message });
    }
});

//remove product from favs
userRouter.delete('/api/remove-from-favs/:id', auth, async (req, res) => {
    try {
        const { id } = req.params;
        const product = await Product.findById(id);
        let user = await User.findById(req.user); // user or user.id?

        for (let i = 0; i < user.favs.length; i++) {
            // product is already in favs, but compare two id objects, not strings
            if (user.favs[i].product._id.equals(product._id)) {
                user.favs.splice(i, 1);
                break;
            } 
        }
        user = await user.save();
        return res.json(user);
    }
    catch (e) {
        res.status(500).json({ error: e.message });
    }
});

userRouter.get("/api/find-owner/:id", auth, async (req, res) => {
    try {
      const { id } = req.params;
      const product = await Product.findById(id);
      let allUsers = await User.find({});
      let owner = [];
      for (let i = 0; i < allUsers.length; i++) {
        for (let j = 0; j < allUsers[i].myProducts.length; j++) {
          if (allUsers[i].myProducts[j].product._id.equals(product._id)) {
            owner.push(allUsers[i].name);
            owner.push(allUsers[i].phone);
            break;
          }
        }
      }
      res.json(owner);
    } catch (e) {
      res.status(500).json({ error: e.message });
    }
  });
module.exports = userRouter;
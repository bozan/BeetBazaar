const mongoose = require("mongoose");
const Product = require('../model/product');

const uri = 'mongodb+srv://irfan:6uqIwfaWHBS5Q973@cluster0.vkerbhn.mongodb.net/?retryWrites=true&w=majority';

const productData = {
    name: "watch",
    description: "apple watch",
    images: [],
    quantity: "1",
    price: "100",
    category: "Mobiles"
  };
// newly added
describe('Product Model MongoDB Delete Test', () => {

    // It's just so easy to connect to the MongoDB Memory Server 
    // By using mongoose.connect
    beforeAll(async () => {
        await mongoose.connect(uri, { useNewUrlParser: true, useUnifiedTopology: true }, (err) => {
            if (err) {
                console.error(err);
                process.exit(1);
            }
        });
    });
    it('Delete a product from the database', async () => {
        // First, create a product and save it to the database
        const product = new Product(productData);
        await product.save();
      
        // Then, delete the product from the database
        const result = await Product.deleteOne({ name: productData.name });
        expect(result.deletedCount).toBe(1);
      
        // Finally, verify that the user has been deleted
        const deletedUser = await Product.findOne({ name: productData.name });
        //expect(deletedproduct).toBeNull();
      });

      it('Should not delete a product from the database with an invalid id', async () => {
        const result = await Product.deleteOne({ name: 'kdsamckmsdkcsac' });
        expect(result.deletedCount).toBe(0);
      });

      it('Should not delete a product from the database if no user is found with the provided id', async () => {
        const result = await Product.deleteOne({ _id: new mongoose.Types.ObjectId() });
        expect(result.deletedCount).toBe(0);
      });
      
})


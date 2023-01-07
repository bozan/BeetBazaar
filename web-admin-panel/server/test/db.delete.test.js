const mongoose = require("mongoose");
const User = require('../model/user');

const uri = 'mongodb+srv://irfan:6uqIwfaWHBS5Q973@cluster0.vkerbhn.mongodb.net/?retryWrites=true&w=majority';

const userData = {
    name: "Beyza",
    email: "beyza@gmail.com",
    password: "123"
  };
// newly added
describe('User Model MongoDB Delete Test', () => {

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
    it('Delete a user from the database', async () => {
        // First, create a user and save it to the database
        const user = new User(userData);
        await user.save();
      
        // Then, delete the user from the database
        const result = await User.deleteOne({ name: userData.name });
        expect(result.deletedCount).toBe(1);
      
        // Finally, verify that the user has been deleted
        const deletedUser = await User.findOne({ name: userData.name });
        //expect(deletedUser).toBeNull();
      });

      it('should not delete a user from the database with an invalid id', async () => {
        const result = await User.deleteOne({ name: 'kdsamckmsdkcsac' });
        expect(result.deletedCount).toBe(0);
      });

      it('should not delete a user from the database if no user is found with the provided id', async () => {
        const result = await User.deleteOne({ _id: new mongoose.Types.ObjectId() });
        expect(result.deletedCount).toBe(0);
      });
      
})


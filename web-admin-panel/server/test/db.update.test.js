const mongoose = require("mongoose");
const User = require('../model/user');

const uri = 'mongodb+srv://irfan:6uqIwfaWHBS5Q973@cluster0.vkerbhn.mongodb.net/?retryWrites=true&w=majority';

const userData = {
    name: "Beyza",
    email: "beyza@gmail.com",
    password: "123"
  };

// newly added
describe('User Model MongoDB Update Test', () => {



    it('should update an email of the user in the database', async () => {

        // Then, update the user in the database
        const updatedUser = await User.findOneAndUpdate(
        { name: userData.name },
        { email: 'updated@example.com' },
        { new: true }
        );
        expect(updatedUser.email).toBe('updated@example.com');
    
        // Finally, verify that the user has been updated
        const savedUser = await User.findOne({ name: userData.name });
        expect(savedUser.email).toBe('updated@example.com');
    });

    it('should not update user with invalid field in the database', async () => {
        const invalidUserData = { name: userData.name, email: 'invalid@example.com', invalidField: 'invalid' };
        let error;
        try {
        const updatedUser = await User.findOneAndUpdate(
        { name: userData.name },
        invalidUserData,
        { new: true }
        );
        error = updatedUser;
        } catch (err) {
        error = err;
        }
        expect(error).toBeInstanceOf(mongoose.Error.ValidationError);
        });
})
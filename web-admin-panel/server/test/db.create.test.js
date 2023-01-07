const mongoose = require("mongoose");
const User = require('../model/user');

const uri = 'mongodb+srv://irfan:6uqIwfaWHBS5Q973@cluster0.vkerbhn.mongodb.net/?retryWrites=true&w=majority';

const userData = {
    name: "Beyza",
    email: "beyza@gmail.com",
    password: "123"
  };
// newly added
describe('User Model MongoDB Create Test', () => {

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

    it('create & save user successfully', async () => {
        const validUser = new User(userData);
        const savedUser = await validUser.save();
        // Object Id should be defined when successfully saved to MongoDB.
        expect(savedUser._id).toBeDefined();
        expect(savedUser.name).toBe(userData.name);
        expect(savedUser.gender).toBe(userData.gender);
        expect(savedUser.dob).toBe(userData.dob);
        expect(savedUser.loginUsing).toBe(userData.loginUsing);
    });


    it('insert user successfully, but the field does not defined in schema should be undefined', async () => {
        const userWithInvalidField = new User({name: "Beyza", email: "beyza@gmail.com", password: "1234", gender: 'Female'});
        const savedUserWithInvalidField = await userWithInvalidField.save();
        expect(savedUserWithInvalidField._id).toBeDefined();
        expect(savedUserWithInvalidField.gender).toBeUndefined();
    });

    // Test Validation is working!!!
    // It should us told us the errors in on gender field.
    it('create user without required field should failed', async () => {
        const userWithoutRequiredField = new User({ name: 'Beyza' });
        let err;
        try {
            const savedUserWithoutRequiredField = await userWithoutRequiredField.save();
            error = savedUserWithoutRequiredField;
        } catch (error) {
            err = error
        }
        expect(err).toBeInstanceOf(mongoose.Error.ValidationError)
        expect(err.errors.email).toBeDefined();
    });   
})

